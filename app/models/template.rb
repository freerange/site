class Template < Base
  self.soup_directories = [
    'soups/templates'
  ]

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Template snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end
end
