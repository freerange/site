class ShowAndTell
  def self.all
    soup.all_snips.reject { |s| s.draft }.sort_by { |e| e.created_at }.reverse
  end

  def self.latest_event_number
    soup.all_snips.map(&:name).map { |n| (/^show-and-tell-(\d+)$/.match(n) || [])[1] }.compact.map(&:to_i).max
  end

  def self.find(name)
    soup[name]
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Site::Application.backend_for('soups/show-and-tell'))
  end
end
