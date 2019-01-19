# WELCOME

This is a Rails application, so you can view the site locally by running `rails server`. Easy.

## Deployment

### Heroku

    $ git clone git@github.com:freerange/site.git
    $ cd site
    $ heroku git:remote --app=gofreerange-site
    $ git checkout master
    $ git push heroku master

### Configuring Airbrake

So that exceptions are reported to our Errbit app. You may need to create a new "app" within the Errbit instance in order to obtain the API key, which is "app"-specific.

    $ heroku config:set AIRBRAKE_PROJECT_ID=<id-for-this-app-within-errbit-app>
    $ heroku config:set AIRBRAKE_API_KEY=<api-key-for-this-app-within-errbit-app>
    $ heroku config:set AIRBRAKE_HOST=<errbit-app-host-including-scheme>

### Configure secret key

    $ rails secret | pbcopy
    $ heroku config:set SECRET_KEY_BASE=`pbpaste`

## Writing a snip

A snip is just a text file within the "soup", like "here-is-my-stuff.snip". You can write whatever you like in the file, and it will be rendered as is when you visit http://yoursite/here-is-my-stuff.

By default snips will be rendered as HTML. Snip files with a `.markdown` extension will be rendered using the `kramdown` gem. You can use ERB tags within any snip. Metadata is stored as YAML at the bottom of a snip.

This site uses multiple soups to make it easier to organise the content. Within the `soups` directory there are snips, and also sub-directories; These contain other snips, but don't result in nested URLs. In other words, if a snip called `hello.snip` is in `soups/blog`, it is still served from `http://yoursite/hello`, and not `http://yoursite/blog/hello`. The URL space is flat.

The layout for a snip will default to 'application' unless the `render_as` attribute is set to 'Blog' in which case it will default to 'blog'. You can override the layout by setting the `layout` attribute.

Only snips with `kind` set to 'blog' or 'show-and-tell' are included in the RSS/Atom feed.

Setting the `draft` attribute to `true` will mean the snip is not included in any lists or in the RSS/Atom feed.

The site map is generated on the fly and includes any page with the `is_page` attribute set to `true`.

If you're not sure, just look at some of the other snips in `soups/blog`.

### Regression test

There are a set of Rake tasks under the 'regression' namespace which allow generation and comparison of a set of normalized HTML/XML artefacts. Note that these Rake tasks depend on HTML Tidy [1] which can be installed via `brew install tidy-html5` on OSX.

[1]: http://www.html-tidy.org/
