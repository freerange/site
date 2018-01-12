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

James stepped through the commits in his project in which he starts with the most basic "container" (which isn't isolated from the rest of the system) and incrementally enhances it to become more like something you might recognise as a container. James used `pstree` to demonstrate process isolation as well as other system commands to show file system .

James is using [Fiddle][ruby-fiddle] (a bit like FFI) to make the necessary calls to the OS.

James was interested to learn more about virtual filesystems and [cgroups][cgroups]. Cgroups allow for limits to be placed on the child processes. You can set this by writing to the virtual filesystem.

Tom explained that Docker has essentially packaged up some of this core OS functionality along with the [union filesystem][union-filesystem].

This really helped demystify "containers" for me. I hadn't realised that a lot of this stuff was baked into the OS (in Linux, at least).

* https://github.com/lizrice/containers-from-scratch
* clone-demo.c - code copied from man page just "worked"
  * demo of using `clone` as an alternative to `fork` and `exec`

[cgroups]: https://en.wikipedia.org/wiki/Cgroups
[docker]: https://www.docker.com/
[james-mead-containers-from-scratch]: https://github.com/floehopper/containers-from-scratch
[liz-rice-dockercon17]: https://www.youtube.com/watch?v=MHv6cWjvQjM&t=1316s
[ruby-fiddle]: https://github.com/ruby/fiddle
[union-filesystem]: https://en.wikipedia.org/wiki/UnionFS

---

## House prices and school catchment areas

![Rob explaining his school catchment area and property website](/images/blog/2018-01-10-show-and-tell-40-rob-m-school-catchment-areas.jpg)

Rob demod a project he worked on a few years back when he was a latte-papa (Swedish for stay-at-home Dad?). The arrival of their first child meant they started thinking about schools and whether they'd need to move to ensure they were in the catchment area for their desired school.

Being a software developer, it was only natural for Rob to write something to make the process easier. He's created an Airbnb like interface allowing you to see the houses for sale near your desired school. Selecting a school on the map will draw the catchment area using historical data available. The complexity of the catchment area rules mean that using historical data gives a much more accurate impression of whether you're likely to get into the school. The map also includes the properties for sale in the area and uses shades of green on the property to illustrate how likely you are to get into the school.

Rob's written the app using [CoffeeScript][coffee-script] which is no longer in vogue. He's used [Leaflet][leaflet-js] and [Turf][turf-js] to generate the maps and the polygons on the map.

Rob mentioned [AdmissionsDay][admissions-day] as a similar service, albeit one focussed on school catchment areas and not (yet?) on properties for sale.

[Rightmove][rightmove] have a school checker but rob deonstrated that the it can be inaccurate.

Involves parsing PDFs.

Rob's really keen to offer it as a service but hasn't had time to do so since having his second child.

It looked really polished as far as I could see.

* UI allows you to filter by type of schools
* complicated rules
  * "nearest school rule"
  * rules change over time
  * siblings / special needs and council care mean the rules are out of the window..
* voronoi diagram - type of shape rob's drawn on the map - https://en.wikipedia.org/wiki/Voronoi_diagram
* Berg's schooloscope - what did this do?

[admissions-day]: admissionsday.co.uk
[coffee-script]: http://coffeescript.org/
[leaflet-js]: http://leafletjs.com/
[rightmove]: http://www.rightmove.co.uk/
[turf-js]: http://turfjs.org/

---

## CSS Shapes

![Nicky walking through her talk about CSS Shapes](/images/blog/2018-01-10-show-and-tell-40-nicky-css-shapes.jpg)

Nicky ran through the very early skeleton of a talk she's preparing to give at Frontend London about [CSS Shapes][css-shapes-intro].

These (3?) CSS properties give you more flexibility about how you present text on a page and allow you to generate more visually appealing websites. They appear to offer some of the functionality that's been present in desktop publishing packages for sometime (e.g. flowing text around an image).

These new things are good because they're still accessible.

Nicky asked for feedback about the talk. I really appreciate that she did this.

There was a suggestion of starting the talk by explaining how it is possible to achieve some of these effects at the moment but that it's very hard and may not result in an accessible site. This would lead nicely into a demo of how these new properties(?) make it much easier.

I haven't really even used CSS for a year or more, let alone tried to keep up with its development. I was impressed by this new functionality that's been added.

* codepen (like jsfiddle)
* why? want more visually appealing websites
* `shape-outside`
  * no triangles - seems odd
* polygons - hard to generate strings of coords required
  * browser extensions attempt to make it easier to generate them
* can use `shape-outside` with an image with transparent background - the browser knows how to flow the text around the image!
* `shape-inside` - to display text inside the shape of an image - this is being worked on at the moment
* `clip-shape` - display a picture behind the outline of a letter

[css-shapes-intro]: https://www.html5rocks.com/en/tutorials/shapes/getting-started/

---

## Machine learning

![Chris describing the k-means clustering algorithm](/images/blog/2018-01-10-show-and-tell-40-chris-p-machine-learning.jpg)

Chris P finished up by talking a bit about the [Coursera machine learning][coursera-machine-learning] course he's continuing to take. He explained that the only "practical" use he has for the stuff he's learning is a tool he built to see whether he could teach a computer to learn the [12 days][tuzz-12-days] of christmas song.

![Chris demonstrating his 12 Days of Christmas machine learning tool](/images/blog/2018-01-10-show-and-tell-40-chris-p-12-days.jpg)

I continue to be fascinated and baffled by these things although it feels as though I'm _very_ slowly understanding some of it.

* coursera - first machine learning course - supposedly the best - andrew ng
* tuzz/machine-learning
* enjoys thes structure of the course - videos, reading and practical worked* he'
* he's moved on to unsupervised learning
  * trying to find patterns/structures in data
  * starting with k-means - the simplest algorithm
* explained how it could be used to reduce number of colours in an image
  * cluster algorithm to determine best palette to use to reduce colours in an image
* PCA - Principle Component Analysis
  * Useful for distilling information
  * Can be useful for data visualisation as it can take 100s of axis and compress them to 2(d) or 3(d)
  * can be useful to compress data before machine learning
* Chris is enjoying the course

[coursera-machine-learning-41]: https://www.coursera.org/learn/machine-learning
[tuzz-12-days]: https://github.com/tuzz/twelve_days

---

## Show & Tell 41

We'll be hosting our 41st Show & Tell on Wed ?? Feb. Please get in touch if you'd like to join us.

:name: show-and-tell-40
:updated_at: 2018-01-12 08:59:57.642221000 +00:00
:created_at: 2018-01-12 08:59:57.642219000 +00:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: chris-roos
:page_title: Show and Tell 40
:layout: show-and-tell-layout
:extension: markdown
