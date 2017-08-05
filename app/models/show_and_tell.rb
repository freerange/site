class ShowAndTell < Base
  self.soup_directories = [
    'soups/show-and-tell'
  ]

  def self.all
    soup.all_snips.reject { |s| s.draft }.sort_by { |e| e.created_at }
  end

  def self.latest_event_number
    soup.all_snips.map(&:name).map { |n| (/^show-and-tell-(\d+)$/.match(n) || [])[1] }.compact.map(&:to_i).max
  end

  private

  def self.soup
    @soup ||= Soup.new(backend_for('soups/show-and-tell'))
  end
end
