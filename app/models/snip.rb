class Snip < Base
  self.soup_directories = [
    'soups',
    'soups/people',
    'soups/projects',
    'soups/blog',
    'soups/weeklinks',
    'soups/weeknotes',
    'soups/wiki',
    'soups/show-and-tell'
  ]

  def self.all(only_pages: false, include_drafts: false)
    snips = soup.all_snips
    snips.select! { |s| s.is_page } if only_pages
    snips.reject! { |s| s.draft } unless include_drafts
    snips
  end

  def self.find_by_name(name)
    soup[name]
  end
end
