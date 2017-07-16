# WELCOME

This is a Rails application, so you can view the site locally by running `rails server`. Easy.

## Deployment

### Enabling the Apache modules required by our config

    root$ a2enmod expires
    root$ a2enmod rewrite

### Using recap to deploy

    $ cap bootstrap
    $ cap deploy:setup
    $ cap deploy

### Set the freerange user's shell to bash

So that Passenger can pick up environment vars from ~/.profile.

    root$ chsh -s /bin/bash freerange

### Configure passwordless sudo access for members of the freerange group

So that we don't have to type our password when deploying.

    root$ echo "%freerange ALL=NOPASSWD: ALL" > /etc/sudoers.d/freerange
    root$ chmod 440 /etc/sudoers.d/freerange

### Configuring Airbrake

So that exceptions are reported to our Errbit app. You may need to create a new "app" within the Errbit instance in order to obtain the API key, which is "app"-specific.

    $ cap env:set AIRBRAKE_PROJECT_ID=<id-for-this-app-within-errbit-app>
    $ cap env:set AIRBRAKE_API_KEY=<api-key-for-this-app-within-errbit-app>
    $ cap env:set AIRBRAKE_HOST=<errbit-app-host-including-scheme>

### Configure secret key

    $ rails secret | pbcopy
    $ cap env:set SECRET_KEY_BASE=`pbpaste`

### Enable serving static files from public directory

    $ cap env:set RAILS_SERVE_STATIC_FILES=true

### Updating the Apache config file

    # Copy the Apache config file (this will trigger Apache to reload)
    $ cap apache:enable_config

## Writing a snip

A snip is just a text file within the `soup`, like "here-is-my-stuff.snip". You can write whatever you like in the file, and it will be rendered as is when you visit http://yoursite/here-is-my-stuff.

By default snips will be rendered as HTML. Snip files with a `.markdown` extension will be rendered using the `kramdown` gem, while snip files with a `.haml` extension will be rendered using the `haml` gem. You can use ERB tags within any snip. Metadata is stored as YAML at the bottom of a snip.

This site uses multiple soups to make it easier to organise the content. Within the `soup` directory there are snips, and also sub-directories; These contain other snips, but don't result in nested URLs. In other words, if a snip called `hello.snip` is in `soup/blog`, it is still served from `http://yoursite/hello`, and not `http://yoursite/blog/hello`. The URL space is flat.

The layout for a snip will default to 'application' unless the `render_as` attribute is set to 'Blog' in which case it will default to 'blog'. You can override the layout by setting the `layout` attribute.

The `kind` attribute is used to filter snips in the `ApplicationHelper#list_of` method. Only snips with `kind` set to 'blog' or 'show-and-tell' are included in the RSS/Atom feed.

Setting the `draft` attribute to `true` will mean the snip is not included in any lists or in the RSS/Atom feed.

The site map is generated on the fly and includes any page with the `is_page` attribute set to `true`.

If you're not sure, just look at some of the other snips in `soup/blog`.

## Updating CSS

### Install node modules

    $ npm install

### Generate CSS

The `*.css` files are generated from `*.less` files in `public/stylesheets`. You can regenerate a specific file using a command like:

    lessc public/stylesheets/screen.less >public/stylesheets/screen.css

### Regression test

There are a set of Rake tasks under the 'regression' namespace which allow generation and comparison of a set of normalized HTML/XML artefacts. Note that these Rake tasks depend on HTML Tidy [1] which can be installed via `brew install tidy-html5` on OSX.

[1]: http://www.html-tidy.org/
