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
    let(:current_username) { 'jamesmead' }

    before do
      allow(described_class).to receive(:current_username).and_return(current_username)
    end

    it 'returns snip name associated with current unix user' do
      described_class.create(name: 'james-mead')
      expect(described_class.current_name).to eq('james-mead')
    end

    it 'raises not found error if no snip exists with the specified name' do
      expect { described_class.current_name }.to raise_error(Base::NotFoundError)
    end

    context 'when current unix user has no mapping to a person name' do
      let(:current_username) { 'unknown' }

      it 'raises exception if no person name found for current unix user' do
        expect { described_class.current_name }.to raise_error(KeyError)
      end
    end
  end
end
