class Person < Base
  self.soup_directories = [
    'soups/people'
  ]

  USERNAMES_VS_PERSON_NAMES = {
    'jamesmead' => 'james-mead',
    'chrisroos' => 'chris-roos',
    'chrislowis' => 'chris-lowis'
  }

  def self.current_name
    person_name = USERNAMES_VS_PERSON_NAMES.fetch(current_username)
    find(person_name).name
  end

  private

  def self.current_username
    `whoami`.chomp
  end
end
