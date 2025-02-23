Monday Links - Week 231
============

### [IndieAuth: Sign in with your domain name](https://indieauth.com/)

I came to this by way of this [write up of the login experience](http://www.tbray.org/ongoing/When/201x/2013/06/07/Why-findIDP) on [Poetica](https://poetica.com/). This in turn lead me to Blaine's article about [Fixing Sign-in](http://blog.romeda.org/2013/06/thoughts-on-signin.html) which mentioned IndieAuth as a better alternative to [OpenID](http://openid.net/). IndieAuth describes itself as "a way to use your own domain name to sign in to websites" and "part of the Indie Web movement to take back control of your online identity".

I added some `rel="me"` links to [my personal website](http://jamesmead.org) and gave it a try. It worked successfully and very smoothly with Github and Google+, but I ran into problems with Twitter and Flickr. IndieAuth didn't seem to be able to detect the link back to my website from my Twitter profile and I ended up getting a nasty error during the login via Flickr. Anyway, it looks like a promising idea and something that I'd like to consider for a GFR project in the future. <%= by('james-mead') %>


### [Official Gmail Blog: A new inbox that puts you back in control](http://gmailblog.blogspot.co.uk/2013/05/a-new-inbox-that-puts-you-back-in.html)

This seems like an improvement over the Priority Inbox - less important emails are categorised into Social, Promotions, Updates, etc, leaving the "emails that you really want" in your Primary Inbox. Unfortunately it's not yet available on my account, so I haven't had a chance to try it out. <%= by('james-mead') %>


### [Manifesto | Edenspiekermann](http://www.edenspiekermann.com/manifesto)

This reminds me quite a bit of some of [our own principles](/), but more concisely stated. Perhaps it's time for us to revisit the GFR homepage, folks? <%= by('james-adam') %>


### [Running Air Video Server on a Raspberry Pi](http://www.raspberrypi.org/phpBB3/viewtopic.php?t=31808&p=360958)

I use [Air Video](http://www.inmethod.com/air-video/index.html) to watch films and TV episodes on my iPad, streaming from a much larger hard drive elsewhere in my flat. At the moment I have a Mac Mini running Air Video Server to achieve this, but it could be cheaper and simpler to use a little Raspberry Pi to do the same. However, I think I have one of the "original" Pi Model B boards, which half the amount of RAM of the second version, so it might not work as smoothly.

In general, the idea of having single-purpose SD cards which you can use to repurpose the Pi really appeals to me - switch from being a "[looking glass](http://scraplab.net/project-looking-glass/)" to being a media server just by plugging in a new "cartridge" and rebooting... <%= by('james-adam') %>


### [Lone Star Ruby Confererence](http://www.lonestarruby.org/2013/lsrc)

[I](/james-adam) will be at the Lone Star Ruby Conference in Austin in July, getting a feel for the Ruby scene in Austin. If you're reading this and also going, please let me know, I'd love to meet up! <%= by('james-adam') %>


### [MailCatcher](http://mailcatcher.me/)

> MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. Run mailcatcher, set your favourite app to deliver to smtp://127.0.0.1:1025 instead of your default SMTP server, then check out http://127.0.0.1:1080 to see the mail that's arrived so far.

I came across this recently after trying to find a similar tool that I'd previously used to test email sending in Rails apps. MailCatcher looks pretty enough and certainly offered the functionality required for me to ensure that [Exception Notifier](https://github.com/smartinez87/exception_notification) was all hooked up correctly in our app. <%= by('chris-roos') %>


:render_as: Blog
:kind: blog
:is_page: true
:written_with: markdown
:author: james-adam
:created_at: 2013-06-17 17:00:00 +01:00
:updated_at: 2013-06-17 17:00:00 +01:00
:page_title: Monday Links - Week 231
:erb: true
