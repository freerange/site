class Weeknotes < Base
  def self.find(name)
    soup[name] || raise(NotFoundError.new("Weeknotes snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(backend_for('soups/weeknotes'))
  end
end
