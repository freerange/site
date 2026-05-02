require 'rails_helper'

RSpec.describe Shortener::Mapping, type: :model do
  describe 'validations' do
    it 'is valid with key and URL' do
      mapping = described_class.new(key: 'key', url: 'http://target.example.com')
      expect(mapping).to be_valid
    end

    it 'is not valid without key' do
      mapping = described_class.new(url: 'http://target.example.com')
      allow(mapping).to receive(:set_key)
      expect(mapping).not_to be_valid
      expect(mapping.errors[:key]).to include("can't be blank")
    end

    it 'is not valid without URL' do
      mapping = described_class.new(key: 'key')
      expect(mapping).not_to be_valid
      expect(mapping.errors[:url]).to include("can't be blank")
    end

    it 'is not valid with duplicate key' do
      existing_mapping = described_class.create!(friendly_key: 'key', url: 'http://target.example.com/existing')
      mapping = described_class.new(friendly_key: existing_mapping.key, url: 'http://target.example.com/another')
      expect(mapping).not_to be_valid
      expect(mapping.errors[:key]).to include('has already been taken')
    end

    it 'sets key if not set' do
      mapping = described_class.new(url: 'http://target.example.com')
      mapping.valid?
      expect(Base62.decode(mapping.key)).to eq(Digest::CRC32.checksum('http://target.example.com'))
    end

    it 'does not set key if friendly_key already set' do
      mapping = described_class.new(friendly_key: 'friendly-key', url: 'http://target.example.com')
      mapping.valid?
      expect(mapping.key).to eq('friendly-key')
    end

    it 'sets key to 0 if URL not set' do
      mapping = described_class.new
      mapping.valid?
      expect(mapping.key).to eq('0')
    end
  end

  describe '.human_attribute_name' do
    it "it returns 'URL' for :url" do
      name = described_class.human_attribute_name(:url)
      expect(name).to eq('URL')
    end

    it "it returns 'URL' for 'url'" do
      name = described_class.human_attribute_name('url')
      expect(name).to eq('URL')
    end

    it "it returns 'Key' for :friendly_key" do
      name = described_class.human_attribute_name(:friendly_key)
      expect(name).to eq('Key')
    end

    it "it returns 'Key' for 'friendly_key'" do
      name = described_class.human_attribute_name('friendly_key')
      expect(name).to eq('Key')
    end
  end

  describe '#to_param' do
    it 'returns key' do
      mapping = described_class.new(key: 'key')
      expect(mapping.to_param).to eq('key')
    end
  end
end
