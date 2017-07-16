unless Rails.env.production?
  random_seed = ENV['RANDOM_SEED']
  srand(random_seed.to_i) if random_seed.present?
end
