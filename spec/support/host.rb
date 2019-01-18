RSpec.configure do |c|
  c.before(:example, type: :request) do
    host! 'example.com'
  end
end
