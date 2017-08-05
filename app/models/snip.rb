class Snip < Base
  def self.all(only_pages: false, include_drafts: false, ordered_chronologically: true)
    snips = soup.all_snips
    snips.select! { |s| s.is_page } if only_pages
    snips.reject! { |s| s.draft } unless include_drafts
    snips.sort_by! { |e| e.created_at } if ordered_chronologically
    snips
  end

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Snip not found: #{name}"))
  end

  def self.find_by_name(name)
    soup[name]
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Soup::Backends::MultiSoup.new(
      backend_for('soups'),
      backend_for('soups/people'),
      backend_for('soups/projects'),
      backend_for('soups/blog'),
      backend_for('soups/weeklinks'),
      backend_for('soups/weeknotes'),
      backend_for('soups/wiki'),
      backend_for('soups/show-and-tell')
    ))
  end
end
