require 'rails_helper'

RSpec.describe Company, type: :model do
  subject(:gfr) { Company::GoFreeRange }

  let(:incorporation_date) { Date.parse('2009-01-13') }
  let(:today) { Date.parse('2017-07-30') }
  let(:this_week_number) { 445 }

  describe '#incorporation_date' do
    it 'has an incorporation date of 13th January, 2009' do
      expect(gfr.incorporation_date).to eq(incorporation_date)
    end
  end

  describe '#week_number_for' do
    it 'returns number of weeks since date of incorporation' do
      expect(gfr.week_number_for(today)).to eq(this_week_number)
    end
  end

  describe '#week_numbers_and_dates' do
    it 'returns array of week numbers and dates since incorporation' do
      result = gfr.week_numbers_and_dates(last_date: today)
      expect(result.first).to eq([0, incorporation_date.monday])
      expect(result.last).to eq([this_week_number, today.monday])
      expect(result.length).to eq(this_week_number + 1)
    end
  end
end
