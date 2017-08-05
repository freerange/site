class BlogArticle < Base
  def self.all
    soup.all_snips.reject { |s| s.draft }.sort_by { |e| e.created_at }
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Soup::Backends::MultiSoup.new(
      backend_for('soups/blog'),
      backend_for('soups/weeklinks'),
      backend_for('soups/weeknotes')
    ))
  end
end
