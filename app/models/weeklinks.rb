class Weeklinks < Base
  self.soup_directories = [
    'soups/weeklinks'
  ]

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Weeklinks snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end
end
