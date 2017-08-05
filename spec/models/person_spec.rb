require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.soup_directories' do
    it 'returns soup directories' do
      expect(described_class.soup_directories).to eq(%w(soups/people))
    end
  end

  describe '.current_name' do
    it 'returns snip name associated with current unix user' do
      described_class.create(name: 'james-mead')
      allow(described_class).to receive(:current_username).and_return('jamesmead')
      expect(described_class.current_name).to eq('james-mead')
    end

    it 'raises exception if no person name found for current unix user' do
      described_class.create(name: 'james-mead')
      allow(described_class).to receive(:current_username).and_return('unknown')
      expect { described_class.current_name }.to raise_error(KeyError)
    end

    it 'raises not found error if no snip exists with the specified name' do
      expect { described_class.current_name }.to raise_error(Base::NotFoundError)
    end
  end

  describe '.find' do
    it 'returns snip with specified name' do
      snip = described_class.create(name: 'snip-name')
      expect(described_class.find('snip-name')).to eq(snip)
    end

    it 'raises not found error if no snip exists with the specified name' do
      expect { described_class.find('snip-name') }.to raise_error(Base::NotFoundError)
    end
  end

  describe '.create' do
    it 'returns new snip with specified attribute' do
      snip = described_class.create(name: 'snip-name', attribute: 'attribute-value')
      expect(snip.name).to eq('snip-name')
      expect(snip.attribute).to eq('attribute-value')
    end
  end
end
