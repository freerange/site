WELCOME
=======

This is just a rack application, so you can view the site locally by setting up passenger or running rackup. Easy.


Writing a snip
--------------

A snip is just a text file within the `soup`, like "here-is-my-stuff.snip". You can write whatever you like in the file, and it will be rendered as is when you visit http://yoursite/here-is-my-stuff.

You might want to use something like Markdown or Textile to format your text. To do so, you need to add some snip attributes to the bottom of the file. After a blank line, write something like this:

    :render_as: Markdown
    :created_at: 2010-11-04 11:12:54 +00:00

That tells vanilla to use Markdown to render the snip. The 'created_at' property is optional, but becomes important if you ever want to sort the snips (i.e. for a blog feed). If you want to use Textile, change the `:render_as:` property. Every snip can use a different renderer (and multiple renderers can be involved in a single page if you start getting into snip inclusion; it's powerful stuff). You can add other attributes if you want, like `:author:` or whatever. Go wild.

This particular vanilla site uses multiple soups to make it easier to organise the content. Within the `soup` directory there are snips, and also subdirectories; These contain other snips, but don't result in nested urls. In other words, if a snip called `hello.snip` is in `soup/blog`, it is still served from `http://yoursite/hello`, and not `http://yoursite/blog/hello`. The URL space is flat.



Writing a blog
--------------

Blog posts are just snips with a particular attribute set:

    :kind: blog

There's a dynasnip called 'kind' that finds all snips with that property and value, and then renders them all appropriately.

The flip side is that if you want to keep a post as a 'draft', just omit that property, or set it to something else. Maybe `draft`; it doesn't matter.

If you're not sure, just look at some of the other snips in `soup/blog`.
