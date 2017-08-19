<h2 id="tag">Recap</h2>

<div class="section group" markdown="1">

[Recap] is an opinionated set of [Capistrano] deployment recipes, designed to use [git]'s strengths to deploy applications and websites in a fast and simple manner.

## Features & Aims

* Releases are managed using git.  All code is deployed to a single directory, and git tags are used to manage different released versions.  No `releases`, `current` or `shared` directories are created, avoiding unnecessary sym-linking.

* Deployments do the minimum work possible, using git to determine whether tasks need to run.  e.g. the `bundle:install` task only runs if the app contains a `Gemfile.lock` file and it has changed since the last deployment.

* Applications have their own user account and group, owning all of that application's associated files and processes.  This gives them a dedicated environment, allowing environment variables to be used for application specific configuration.  Tasks such as `env`, `env:set` and `env:edit` make setting and changing these variables easy.

* Personal accounts are used to deploy to the server, distinct from the application user.  The right to deploy an application is granted simply by adding a user to the application group.

## Documentation

For more information, the main documentation can be found at [/recap/docs].

## Source

The source code is available [on Github].

</div>

[Recap]: http://github.com/freerange/recap
[Capistrano]: https://github.com/capistrano/capistrano
[git]: http://git-scm.com/
[/recap/docs]: /recap/docs
[on github]: https://github.com/freerange/recap

:layout: project-layout

:created_at: 2017-07-23 11:13:48 +0100
:created_sha: e40230912c8dbe9590cae139a769132979839747
