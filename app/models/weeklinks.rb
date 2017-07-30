class Weeklinks < Base
  def self.find(name)
    soup[name] || raise(NotFoundError.new("Weeklinks snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Site::Application.backend_for('soups/weeklinks'))
  end
end
