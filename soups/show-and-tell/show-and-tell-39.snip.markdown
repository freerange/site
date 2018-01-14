Show and Tell 39
================

## Tom S

* Upgrade RSpec
* Diff generated spec helper with existing
  * Monkey-patching
* Use verifying doubles
  * Tom quite likes it
* Why like instance_double('Foo') vs instance_double(Foo)?
* Unit test shouldn't care about interface of associated classes/objects but when run as part of Rake it gives an integration test for free
* Partial double verification
  * Going to be default in RSpec v4
  * Stub method on existing object
* October start - 3 month project
  * RSpec v3.6: without_partial_double_verification
  * Rails view specs - don't verify doubles
  * "I don't write view specs"
  * Disabled in view specs to allow people to not worry about adding them
  * Anonymous controllers in specs
    * Add methods to anonymous controllers that fail fast
    * Illustrates contract between controller and mixin
    * Helpers have access to "controller" but you can't define methods on it
    * define_attribute_methods
  * 90% were real mistakes - probably causing real problems
  * Tom's gone through and fixed them all
    * Chris wondered whether GDS would turn it on and then leave it to others to fix it
  * Rename DB column
  * Unit test continued to pass because it's stubbing find_by_voucher_code
  * Tom rebased branch and discovered a real problem

* James M mentioned OO-matron by Nat Pryce

## Ben G

* Computation Club: 3D Xmas tree

* Explain 3D in a different way
* 2D/3D transforms
* 3D = usable approximation of real physical world
* Want to give people understanding of why we use surfaces - it's a choice
* Higher level - represent surface in some way
* Feedback on whether good way to explain things
* 3D image on flat screen
* Surface. Lights coming off it.
* 3 ways to describe surface
* 3D -> 2D and surface -> lines
* Vector based vs pixel based
* Algebraic ways of drawing line

Algebraic         | Pixels             | Sampling
------------------|--------------------|---------
programs          | voxels             | mesh
y=mx+c            |                    |
Illustrator       | Paint              | Bezier curves
algebra/maths     | Boolean operations | interpolation
solving equations | and/or             |
ray tracing       | Minecraft          | 3D games
shadertoy/demo/4K | Worms              |
                  | Lemmings           |


:name: show-and-tell-39
:updated_at: 2018-01-05 16:53:45.970409000 +00:00
:created_at: 2018-01-05 16:53:45.970408000 +00:00
:render_as: Blog
:kind: show-and-tell
:draft: true
:is_page: true
:written_with: markdown
:author: james-mead
:page_title: Show and Tell 39
:layout: show-and-tell-layout
:extension: markdown