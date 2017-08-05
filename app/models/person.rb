class Person < Base
  USERNAMES_VS_PERSON_NAMES = {
    'jamesmead' => 'james-mead',
    'chrisroos' => 'chris-roos',
    'chrislowis' => 'chris-lowis'
  }

  def self.current_name
    person_name = USERNAMES_VS_PERSON_NAMES.fetch(current_username)
    find(person_name).name
  end

  def self.find(name)
    soup[name] || raise(NotFoundError.new("Person snip not found: #{name}"))
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(backend_for('soups/people'))
  end

  def self.current_username
    `whoami`.chomp
  end
end
