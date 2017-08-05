require 'rails_helper'

RSpec.describe Snip, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.all' do
    it 'returns all snips in the soup' do
      snip_1 = described_class.create(name: 'snip-1')
      snip_2 = described_class.create(name: 'snip-2')
      expect(described_class.all).to contain_exactly(snip_1, snip_2)
    end

    it 'does not include draft snips by default' do
      draft_snip = described_class.create(name: 'draft-snip', draft: true)
      expect(described_class.all).not_to include(draft_snip)
    end

    it 'does include draft snips if include_drafts is true' do
      draft_snip = described_class.create(name: 'draft-snip', draft: true)
      expect(described_class.all(include_drafts: true)).to include(draft_snip)
    end

    it 'does includes non-page snips by default' do
      non_page_snip = described_class.create(name: 'non-page-snip', is_page: false)
      expect(described_class.all).to include(non_page_snip)
    end

    it 'does not include non-page snips if only_pages is true' do
      non_page_snip = described_class.create(name: 'non-page-snip', is_page: false)
      expect(described_class.all(only_pages: true)).not_to include(non_page_snip)
    end

    it 'returns snips in ascending chronological order by default' do
      snip_1 = described_class.create(name: 'snip-1', created_at: Time.at(2))
      snip_2 = described_class.create(name: 'snip-2', created_at: Time.at(1))
      expect(described_class.all).to eq([snip_2, snip_1])
    end

    it 'returns snips in creation order if ordered_chronologically is false' do
      snip_1 = described_class.create(name: 'snip-1', created_at: Time.at(2))
      snip_2 = described_class.create(name: 'snip-2', created_at: Time.at(1))
      expect(described_class.all(ordered_chronologically: false)).to eq([snip_1, snip_2])
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

  describe '.find_by_name' do
    it 'returns snip with specified name' do
      snip = described_class.create(name: 'snip-name')
      expect(described_class.find_by_name('snip-name')).to eq(snip)
    end

    it 'returns nil if no snip exists with the specified name' do
      expect(described_class.find_by_name('snip-name')).to be_nil
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
