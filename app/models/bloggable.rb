class Bloggable < Base
  self.soup_directories = [
    'soups/blog',
    'soups/weeklinks',
    'soups/weeknotes',
    'soups/show-and-tell'
  ]

  def self.all
    soup.all_snips.reject { |s| s.draft }.sort_by { |e| e.created_at }
  end

  def self.create(attributes)
    soup << attributes
  end
end
