module ShortenerHelper
  def label_text(attribute_name)
    Shortener::Mapping.human_attribute_name(attribute_name)
  end
end
