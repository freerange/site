class Template < Base
  def self.find(name)
    soup[name] || raise(NotFoundError.new("Template snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Site::Application.backend_for('soups/templates'))
  end
end
