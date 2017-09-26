class Person < Base
  self.soup_directories = [
    'soups/people'
  ]

  USERNAMES_VS_PERSON_NAMES = {
    'jamesmead' => 'james-mead',
    'chrisroos' => 'chris-roos',
    'chrislowis' => 'chris-lowis'
  }

  GITHUB_LOGINS_VS_PERSON_NAMES = {
    'floehopper' => 'james-mead',
    'chrisroos' => 'chris-roos',
    'chrislo' => 'chris-lowis'
  }

  def self.current_name
    person_name = USERNAMES_VS_PERSON_NAMES.fetch(current_username)
    find(person_name).name
  end

  def self.find_by_github_login(login)
    person_name = GITHUB_LOGINS_VS_PERSON_NAMES.fetch(login)
    find(person_name)
  end

  private

  def self.current_username
    `whoami`.chomp
  end
end
