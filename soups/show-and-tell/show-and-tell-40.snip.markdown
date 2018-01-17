Show and Tell 40
================

[James][james-mead] and I were joined by [Ben][ben-griffiths], [Chris][chris-patuzzo], [Nicky][nicky-thompson], [Rob][rob-mckinnon] and [Tom][tom-stuart] for our 40th Show & Tell.

Thanks to everyone for coming and thanks to Tom for taking the photos.

[ben-griffiths]: https://twitter.com/beng
[chris-patuzzo]: http://chris.patuzzo.co.uk/
[james-mead]: /james-mead
[nicky-thompson]: http://www.knotnicky.com/
[rob-mckinnon]: https://github.com/robmckinnon
[tom-stuart]: http://codon.com/

---

## Containers in Ruby

![James explaining how to build a simple container in Ruby](/images/blog/2018-01-10-show-and-tell-40-james-m-containers.jpg)

James walked us through using Ruby to create a simple [Docker][docker]-like container from scratch. Inspired by [Liz Rice's talk at Dockercon17][liz-rice-dockercon17], he's been working on his own [containers-from-scratch implementation in Ruby][james-mead-containers-from-scratch].

James stepped through the commits in his project in which he starts with the most basic "container" (which isn't isolated from the rest of the system) and incrementally enhances it to isolate it from the host. James used `pstree` and other shell commands to demonstrate process and file system isolation as the container progressed.

James is using [Fiddle][ruby-fiddle] (a bit like FFI) to make the necessary calls to the OS and has been interested to learn about using virtual filesystems to modify system settings, and about [cgroups][cgroups] to limit child processes.

James's explanation really helped demystify "containers" for me. I certainly hadn't realised that a lot of this stuff was baked into Linux.

[cgroups]: https://en.wikipedia.org/wiki/Cgroups
[docker]: https://www.docker.com/
[james-mead-containers-from-scratch]: https://github.com/floehopper/containers-from-scratch
[liz-rice-dockercon17]: https://www.youtube.com/watch?v=MHv6cWjvQjM&t=1316s
[ruby-fiddle]: https://github.com/ruby/fiddle
[union-filesystem]: https://en.wikipedia.org/wiki/UnionFS

---

## House prices and school catchment areas

![Rob explaining his school catchment area and property website](/images/blog/2018-01-10-show-and-tell-40-rob-m-school-catchment-areas.jpg)

Rob demoed a project he worked on a few years back when he was a Latte Papa (Swedish term for stay-at-home Dad :-)). The arrival of Rob's first child meant he and his partner started thinking about schools and whether they'd need to move to increase the chances of their child getting in!

Being a software developer, it was only natural for Rob to write something to make the process easier. He's created an Airbnb-like web interface showing properties for sale near your desired school. Selecting a school on the map plots the catchment area to make it easy to see the houses that fall within it. Rob's using historical data to plot the catchment area because the complexity of the catchment rules means that this should give a more realistic idea of whether a particular property falls inside its boundaries. He's used shades of green on the properties to indicate how likely you are to get a place at the school.

Rob wrote the app using [CoffeeScript][coffee-script], used [Leaflet][leaflet-js] for the maps and [Turf][turf-js] to plot the catchment areas. Rob's really keen to offer it as a service but hasn't had time to do so since having his second child.

Rob mentioned [AdmissionsDay][admissions-day] as a similar service, albeit one focussed on school catchment areas and not (yet?) on properties for sale. He also showed us the [Rightmove][rightmove] school checker but suggested that it could potentially give misleading advice based on the historical data available.

I thought it looked really polished and so I really hope Rob's able to find some time to do something with it.

[admissions-day]: https://admissionsday.co.uk/
[coffee-script]: http://coffeescript.org/
[leaflet-js]: http://leafletjs.com/
[rightmove]: http://www.rightmove.co.uk/
[turf-js]: http://turfjs.org/

---

## CSS Shapes

![Nicky walking through her talk about CSS Shapes](/images/blog/2018-01-10-show-and-tell-40-nicky-css-shapes.jpg)

Nicky ran through the very early skeleton of a talk she's preparing to give at Frontend London about [CSS Shapes][css-shapes-intro]; covering [`shape-outside`][mdn-shape-outside], `shape-inside` and [`clip-path`][mdn-clip-path].

These relatively new CSS properties make it easier to generate visually appealing website by giving you more control over the flow of text on a page. They appear to offer some of the functionality that's been present in desktop publishing packages for sometime (e.g. flowing text around an image). Nicky's particularly keen on the use of these techniques as it means that the site remains accessible.

Nicky was interested in feedback about the talk to help guide its development before she presents it for real. There was a suggestion of starting the talk by explaining how it is possible to achieve some of these effects at the moment but that it's very hard and may not result in an accessible site. This would lead nicely into a demo of how these new properties make it much easier.

I really appreciate that Nicky felt comfortable presenting such an early version of the talk and I hope the feedback was useful!

I haven't really even used CSS for a year or more, let alone tried to keep up with its development. I was impressed by this new functionality that's been added.

[css-shapes-intro]: https://www.html5rocks.com/en/tutorials/shapes/getting-started/
[mdn-shape-outside]: https://developer.mozilla.org/en-US/docs/Web/CSS/shape-outside
[mdn-clip-path]: https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path

---

## Machine learning

![Chris describing the k-means clustering algorithm](/images/blog/2018-01-10-show-and-tell-40-chris-p-machine-learning.jpg)

Chris P finished up by talking a bit about the [Coursera machine learning][coursera-machine-learning] course he's taking. He's enjoying the course and finds that the mix of videos, text and practical exercises works really well.

He's currently working through the section on "unsupervised learning" which, as I understand it, is about trying to find structures and patterns in data when you don't know what it might contain. He explained a bit about the [k-means algorithm][k-means] and how it can be used to reduce the number of colours in an image while retaining as much information as possible. There was also some discussion of the [Principle Component Analysis][principle-component-analysys] algorithm which is useful for distilling information. This can be helpful for visualisation as it will allow you to take data in many dimensions and compress is to 2 or 3 for display.

Chris left us with a teaser of a tool he's built to see whether he can teach a computer to learn the [12 days][tuzz-12-days] of Christmas song. This is, apparently, the only practical use he's come up with for the things he's been learning :-)

![Chris demonstrating his 12 Days of Christmas machine learning tool](/images/blog/2018-01-10-show-and-tell-40-chris-p-12-days.jpg)

I continue to be fascinated and baffled by these things although it feels as though I'm _very_, _very_ slowly understanding some of it.

[coursera-machine-learning]: https://www.coursera.org/learn/machine-learning
[k-means]: https://en.wikipedia.org/wiki/K-means_clustering
[principle-component-analysys]: https://en.wikipedia.org/wiki/Principal_component_analysis
[tuzz-12-days]: https://github.com/tuzz/twelve_days

---

## Show & Tell 41

We'll be hosting our 41st Show & Tell in February. Please [get in touch][contact] if you'd like to join us.

[contact]: /contact

:name: show-and-tell-40
:updated_at: 2018-01-16 19:37:10.346608000 +00:00
:created_at: 2018-01-16 19:37:10.346600000 +00:00
:render_as: Blog
:kind: show-and-tell
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 40
:layout: show-and-tell-layout
:extension: markdown
