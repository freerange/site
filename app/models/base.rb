class Base
  NotFoundError = Class.new(StandardError)

  class_attribute :soup_directories

  private

  def self.soup
    @soup ||= Soup.new(Soup::Backends::MultiSoup.new(
      *soup_directories.map{ |dir| backend_for(dir) }
    ))
  end

  def self.backend_for(path)
    Soup::Backends::FileBackend.new(Rails.root.join(path))
  end
end
