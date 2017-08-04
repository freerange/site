class Bloggable < Base
  def self.all
    soup.all_snips.reject { |s| s.draft }.sort_by { |e| e.created_at }
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Soup::Backends::MultiSoup.new(
      Site::Application.backend_for('soups/blog'),
      Site::Application.backend_for('soups/weeklinks'),
      Site::Application.backend_for('soups/weeknotes'),
      Site::Application.backend_for('soups/show-and-tell')
    ))
  end
end
