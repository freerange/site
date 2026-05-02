require 'rails_helper'

RSpec.describe Shortener::User, type: :model do
  include ActiveSupport::Testing::TimeHelpers

  describe 'validations' do
    it 'is valid with email and password' do
      user = described_class.new(email: 'test@example.com', password: 'password')
      expect(user).to be_valid
    end

    it 'is not valid without email' do
      user = described_class.new(password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is not valid with duplicate email' do
      existing_user = described_class.create!(email: 'test@example.com', password: 'password')
      user = described_class.new(email: existing_user.email, password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include('has already been taken')
    end

    it 'converts email to lowercase on validation' do
      user = described_class.new(email: 'TEST@EXAMPLE.COM', password: 'password')
      user.valid?
      expect(user.email).to eq('test@example.com')
    end

    it 'strips leading & trailing whitespace from email on validation' do
      user = described_class.new(email: ' test@example.com ', password: 'password')
      user.valid?
      expect(user.email).to eq('test@example.com')
    end

    it 'is not valid without password' do
      user = described_class.new(email: 'test@example.com')
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end

    it 'generates a password digest on validation' do
      user = described_class.new(email: 'test@example.com', password: 'password')
      user.valid?
      expect(user.password_digest).not_to be_blank
    end
  end

  describe 'session token' do
    let(:existing_user) { described_class.create!(email: 'test@example.com', password: 'password') }
    let(:token) { existing_user.generate_token_for(:session) }

    it 'can lookup user by token' do
      user = Shortener::User.find_by_token_for(:session, token)
      expect(user).to eq(existing_user)
    end

    it 'expires token after 1 day' do
      old_token = token
      travel_to(1.day.from_now + 1.second) do
        user = Shortener::User.find_by_token_for(:session, old_token)
        expect(user).to be_nil
      end
    end
  end
end
