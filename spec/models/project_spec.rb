require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.soup_directories' do
    it 'returns soup directories' do
      expect(described_class.soup_directories).to eq(%w(soups/projects))
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
