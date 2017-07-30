class Person
  USERNAMES_VS_PERSON_NAMES = {
    'jamesmead' => 'james-mead',
    'chrisroos' => 'chris-roos',
    'chrislowis' => 'chris-lowis'
  }

  def self.current_name
    USERNAMES_VS_PERSON_NAMES.fetch(current_username)
  end

  def self.find(name)
    soup[name]
  end

  def self.create(attributes)
    soup << attributes
  end

  private

  def self.soup
    @soup ||= Soup.new(Site::Application.backend_for('soups/people'))
  end

  def self.current_username
    `whoami`.chomp
  end
end
