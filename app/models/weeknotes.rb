class Weeknotes < Base
  self.soup_directories = [
    'soups/weeknotes'
  ]

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Weeknotes snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end
end
