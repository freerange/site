require 'rails_helper'

RSpec::Matchers.define :include_word do |expected|
  match do |actual|
    actual.split(%r{\W+}).include?(expected)
  end
end

RSpec.describe Date::DATE_FORMATS do
  describe 'full_ordinal formatted date' do
    let(:date) { Date.parse('2017-01-01') }
    let(:formatted_date) { date.to_s(:full_ordinal) }

    context 'when date is 31st of month' do
      let(:date) { Date.parse('2017-01-31') }

      it 'includes the word 31st' do
        expect(formatted_date).to include_word('31st')
      end
    end

    context 'when date is 22nd of month' do
      let(:date) { Date.parse('2017-01-22') }

      it 'includes the word 22nd' do
        expect(formatted_date).to include_word('22nd')
      end
    end

    context 'when date is 3rd of month' do
      let(:date) { Date.parse('2017-01-03') }

      it 'includes the word 3rd' do
        expect(formatted_date).to include_word('3rd')
      end
    end

    it 'starts with the day of the week' do
      expect(formatted_date).to start_with('Sunday')
    end

    it 'includes full month name' do
      expect(formatted_date).to include_word('January')
    end

    it 'ends with the full year' do
      expect(formatted_date).to end_with('2017')
    end

    it 'separates month and year with a comma' do
      expect(formatted_date).to include('January, 2017')
    end
  end
end
