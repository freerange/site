require "test_helper"
require 'blog'

class BlogRendererTest < Test::Unit::TestCase

  def setup
    vanilla_setup
  end

  def teardown
    vanilla_teardown
  end

  def test_should_format_the_date
    author_attrs    = {:name => 'author-name', :content => 'Author Name', :image => 'author-image'}
    blog_post_attrs = {
      :name => "my-blog-post", :content => "x", :render_as => 'Blog', :kind => 'blog',
      :written_with => 'Markdown', :author => author_attrs[:name], :page_title => 'page-title'
    }

    create_snip(:name => 'blog-template', :content => 'ENTRY_DATE')
    create_snip(:name => 'blog-layout', :content => "<layout>{current_snip}</layout>")
    create_snip(author_attrs)
    set_main_template "{current_snip}"

    days_of_month = 1.upto(31).to_a
    {
      :st => (sts = [1, 21, 31]),
      :nd => (nds = [2, 22]),
      :rd => (rds = [3, 23]),
      :th => days_of_month - (sts + nds + rds)
    }.each do |suffix, days|
      days.each do |day|
        date = Date.parse("2011-01-#{day}")
        create_snip(blog_post_attrs.merge(:created_at => date))

        assert_response_body_match "#{day}#{suffix} January", blog_post_attrs[:name]
      end
    end
  end

  def test_wem
    author_attrs    = {:name => 'author-name', :content => 'Author Name', :image => 'author-image'}
    blog_post_attrs = {
      :name => "my-blog-post", :content => "x", :render_as => 'Blog', :kind => 'blog',
      :written_with => 'Markdown', :author => author_attrs[:name], :page_title => 'page-title'
    }
    create_snip(author_attrs)
    create_snip(blog_post_attrs)

    assert_response_body_match "Author Name", "my-blog-post"
  end
end