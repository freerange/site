# Using Kamal to deploy a Rails 8 app to Digital Ocean

These steps describe how to use [Kamal](https://kamal-deploy.org/) to deploy a fresh Rails 8 app to a [Digital Ocean Droplet](https://www.digitalocean.com/products/droplets).

## Install and configure Digital Ocean CLI

Follow the [Digital Ocean instructions](https://docs.digitalocean.com/reference/doctl/how-to/install/) to install `doctl` and use an API token to connect it to your account.

## Create a Digital Ocean Container Registry

Kamal expects to be able to push/pull container images to/from a registry during deployment so we use `doctl` to create a private Container Registry in Digital Ocean.

Each Digital Ocean account can only create one Container Registry so I suggest something fairly generic (i.e. not specific to this application).

```bash
# Save the registry name in an environment variable so that we can use it later.
$ export REGISTRY_NAME=<registry-name>

# The ams3 region is Amsterdam because it's close to me.
# Use whichever region makes sense to you.
$ doctl registry create ${REGISTRY_NAME} --region ams3
Name               Endpoint                                     Region slug
<registry-name>    registry.digitalocean.com/<registry-name>    ams3
```

## Create a Digital Ocean Personal Access Token for accessing the Container Registry

This allows Kamal to push/pull images from the Digital Ocean Container Registry created in the previous step.

Visit [Digital Ocean API Tokens](https://cloud.digitalocean.com/account/api/tokens) and create a new token with the following attributes:

- Name: container-registry-token
- Expiration: 30 days
- Scopes: Custom Scopes
- Custom scopes: registry update / read

Save your Digital Ocean username and the API key in the environment as we need these to configure Kamal.

```bash
$ export DO_USERNAME=<digital-ocean-username>
$ export KAMAL_REGISTRY_PASSWORD=<token>
```

Test that you can login to the registry using the token created in the previous step

```bash
$ echo ${KAMAL_REGISTRY_PASSWORD} | docker login --username "${DO_USERNAME}" --password-stdin registry.digitalocean.com
WARNING! Your password will be stored unencrypted in ~/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

Login Succeeded
```

## Add SSH key to Digital Ocean

This allows us to create a Droplet that's configured for SSH Public Key authentication.

This assumes you have an existing SSH public key in `~/.ssh/id_ed25519.pub` that hasn't yet been added to your Digital Ocean account.

```bash
$ doctl compute ssh-key create <key-name> --public-key "$(cat ~/.ssh/id_ed25519.pub)"
ID          Name        FingerPrint
45068967    <key-name>  <ssh-key-fingerprint>

# Store the SSH key fingerprint so that we can use it when creating the Droplet
$ export SSH_KEY=<ssh-key-fingerprint>
```

## Create a Digital Ocean Droplet

Use the Digital Ocean CLI to create a small ($6/month) Droplet.

Add an entry to /etc/hosts to avoid having to edit DNS at this stage.

```bash
$ export DROPLET_NAME=rails-app

$ doctl compute droplet create \
	--image ubuntu-24-10-x64 \
	--size s-1vcpu-1gb \
	--region lon1 \
	--ssh-keys ${SSH_KEY} \
	--wait \
	${DROPLET_NAME}
ID           Name               Public IPv4       Private IPv4    Public IPv6    Memory    VCPUs    Disk    Region    Image               VPC UUID                                Status    Tags    Features                            Volumes
<id>         rails-app          <public-ip>       <ip>                           1024      1        25      lon1      Ubuntu 24.10 x64    <uuid>                                  active            droplet_agent,private_networking

# Store the public IP in an environment variable
$ export PUBLIC_IP=<public-ip>

# Store the hostname in an environment variable
$ export HOST_NAME=rails-app.example

# Edit /etc/hosts to allow named access to the server
$ echo "${PUBLIC_IP} ${HOST_NAME}" | sudo tee -a /etc/hosts

# SSH to the machine
$ ssh root@${HOST_NAME}

# Configure firewall to block everything except SSH, HTTP and HTTPS traffic
$ ufw allow ssh
$ ufw allow http
$ ufw allow https
$ ufw enable

# Check status of firewall
$ ufw status
Status: active

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW       Anywhere
80/tcp                     ALLOW       Anywhere
443                        ALLOW       Anywhere
22/tcp (v6)                ALLOW       Anywhere (v6)
80/tcp (v6)                ALLOW       Anywhere (v6)
443 (v6)                   ALLOW       Anywhere (v6)
```

## Create a new Rails app

```bash
# Create new Rails project
$ rails new rails-app
$ cd rails-app

# Add to git
$ git add .
$ git commit -m 'Create empty Rails 8 app'
```

## Update config/deploy.rb

By applying the following changes:

```diff
--- a/config/deploy.yml
+++ b/config/deploy.yml
@@ -2,12 +2,12 @@
 service: rails_app

 # Name of the container image.
-image: your-user/rails_app
+image: <%= ENV['REGISTRY_NAME'] %>/rails_app

 # Deploy to these servers.
 servers:
   web:
-    - 192.168.0.1
+    - <%= ENV['HOST_NAME'] %>
   # job:
   #   hosts:
   #     - 192.168.0.1
@@ -18,14 +18,15 @@ servers:
 #
 # Note: If using Cloudflare, set encryption mode in SSL/TLS setting to "Full" to enable CF-to-app encryption.
 proxy:
-  ssl: true
-  host: app.example.com
+  ssl: false
+  host: <%= ENV['HOST_NAME'] %>

 # Credentials for your image host.
 registry:
   # Specify the registry server, if you're not using Docker Hub
   # server: registry.digitalocean.com / ghcr.io / ...
-  username: your-user
+  server: registry.digitalocean.com
+  username: <%= ENV['DO_USERNAME'] %>

   # Always use an access token rather than real password when possible.
   password:
```

## Use Kamal to setup the server and deploy the app

```bash
$ kamal setup
```

## Test the deployment

Use curl to check that the app has been deployed successfully.

```bash
$ curl http://${HOST_NAME}/up
<!DOCTYPE html><html><body style="background-color: green"></body></html>
```

## Enable SSL

This requires a public DNS entry for your Rails app so that Let's Encrypt can issue a certificate.

1. Create a new DNS entry for your server and point it at the public IP of the Digital Ocean Droplet created earlier
2. Update the `HOST_NAME` environment variable with the new host
3. Replace `ssl: false` with `ssl: true` under `proxy` in config/deploy.rb
4. Run `kamal deploy` to enable SSL in the proxy
5. Check that SSL is working with `curl`:

```bash
$ curl -v http://${HOST_NAME}
< HTTP/1.1 301 Moved Permanently
< Location: https://<host-name>/

$ curl https://${HOST_NAME}/up
<!DOCTYPE html><html><body style="background-color: green"></body></html>
```

## Tidying up

Remove everything created in the steps above:

- Delete Digital Ocean Droplet
  - `$ doctl compute droplet delete ${DROPLET_NAME}`
- Delete SSH Key from Digital Ocean
  - `$ doctl compute ssh-key delete ${SSH_KEY}`
- Delete Digital Ocean Container Registry
  - `$doctl registry delete`
- Remove entry from /etc/hosts
  - `$ sudo sed -e "s/${PUBLIC_IP} ${HOST_NAME}//g" -i /etc/hosts`
- Delete [Personal Access Token](https://cloud.digitalocean.com/account/api/tokens)
- Delete DNS entry if required

## Tools used

The above instructions were tested as working with the following tool versions.

```bash
$ lsb_release -d
No LSB modules are available.
Description:	Ubuntu 24.04.1 LTS

$ doctl version
doctl version 1.120.2-release
Git commit hash: 34e9fbbe

$ ruby --version
ruby 3.4.1 (2024-12-25 revision 48d4efcb85) +PRISM [x86_64-linux]

$ rails --version
Rails 8.0.1

$ docker --version
Docker version 27.5.0, build a187fa5

$ kamal version
2.4.0
```

:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: chris-roos
:created_at: 2025-03-14 12:00:00 +00:00
:updated_at: 2025-03-14 12:00:00 +00:00
:page_title: Using Kamal to deploy a Rails 8 app to Digital Ocean
