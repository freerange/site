module Shortener
  class Mapping < ApplicationRecord
    self.table_name = 'shortener_mappings'

    ATTRIBUTE_KEYS_VS_NAMES = {
      url: 'URL',
      friendly_key: 'Key',
    }

    attr_accessor :friendly_key

    validates :key, presence: true, uniqueness: true
    validates :url, presence: true

    before_validation :set_key, on: :create

    def self.human_attribute_name(attr, options = {})
      ATTRIBUTE_KEYS_VS_NAMES[attr.to_sym] || super
    end

    def set_key
      if friendly_key.present?
        self.key = friendly_key
      else
        hash = Digest::CRC32.checksum(url || '')
        self.key = Base62.encode(hash)
      end
    end

    def to_param
      key
    end
  end
end
