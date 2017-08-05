require 'rails_helper'

RSpec.describe Bloggable, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.soup_directories' do
    it 'returns soup directories' do
      expect(described_class.soup_directories).to eq(
        %w(soups/blog soups/weeklinks soups/weeknotes soups/show-and-tell)
      )
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
end
