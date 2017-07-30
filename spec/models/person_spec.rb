require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:backend) { Soup::Backends::Memory.new }
  let(:soup) { Soup.new(backend) }

  before do
    allow(described_class).to receive(:soup).and_return(soup)
  end

  describe '.current_name' do
    it 'returns snip name associated with current unix user' do
      allow(described_class).to receive(:current_username).and_return('jamesmead')
      expect(described_class.current_name).to eq('james-mead')
    end

    it 'raises exception if no person name found for current unix user' do
      allow(described_class).to receive(:current_username).and_return('unknown')
      expect { described_class.current_name }.to raise_error(KeyError)
    end
  end
end
