return unless Rails.env.development?
require 'tinify'

namespace :assets do
  task compress_images: :environment do
    Tinify.key = ENV['TINIFY_API_KEY']

    image_root = Rails.root.join('app/assets/images')
    image_root.glob('**/*').sort.each do |image_path|
      next if image_path.directory?
      next unless ['.png', '.jpg'].include?(image_path.extname)
      source = Tinify.from_file(image_path)
      source.to_file(image_path)
      puts image_path
    end
  end
end
