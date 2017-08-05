class Project < Base
  self.soup_directories = [
    'soups/projects'
  ]

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Project snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end
end
