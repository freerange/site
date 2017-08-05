class Base
  NotFoundError = Class.new(StandardError)

  def self.backend_for(path)
    Soup::Backends::FileBackend.new(Rails.root.join(path))
  end
end
