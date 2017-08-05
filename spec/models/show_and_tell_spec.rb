require 'rails_helper'

RSpec.describe ShowAndTell, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.soup_directories' do
    it 'returns soup directories' do
      expect(described_class.soup_directories).to eq(%w(soups/show-and-tell))
    end
  end

  describe '.all' do
    it 'returns all snips in show-and-tell soup' do
      snip_1 = described_class.create(name: 'snip-1')
      snip_2 = described_class.create(name: 'snip-2')
      expect(described_class.all).to contain_exactly(snip_1, snip_2)
    end

    it 'does not include draft snips' do
      draft_snip = described_class.create(name: 'draft-snip', draft: true)
      expect(described_class.all).not_to include(draft_snip)
    end

    it 'returns snips in ascending chronological order' do
      snip_1 = described_class.create(name: 'snip-1', created_at: Time.at(2))
      snip_2 = described_class.create(name: 'snip-2', created_at: Time.at(1))
      expect(described_class.all).to eq([snip_2, snip_1])
    end
  end

  describe '.latest_event_number' do
    it 'returns number of most recent show-and-tell snip' do
      described_class.create(name: 'show-and-tell-1')
      described_class.create(name: 'show-and-tell-2')
      expect(described_class.latest_event_number).to eq(2)
    end

    it 'ignores snips with non-matching snip name' do
      described_class.create(name: 'show-and-tell-1')
      described_class.create(name: 'week-2')
      expect(described_class.latest_event_number).to eq(1)
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
