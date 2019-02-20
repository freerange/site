require 'rails_helper'

describe Slack::Invitation do
  subject(:invitation) { Slack::Invitation.new(email: email) }

  describe 'validation' do
    context 'when email is valid' do
      let(:email) { 'joe@example.com' }

      it 'is valid' do
        expect(invitation).to be_valid
      end
    end

    context 'when email is blank' do
      let(:email) { '' }

      it 'is not valid' do
        expect(invitation).not_to be_valid
      end

      it 'has presence error on email' do
        invitation.valid?
        expect(invitation.errors[:email]).to include("can't be blank")
      end

      it 'does not have format error on email' do
        invitation.valid?
        expect(invitation.errors[:email]).not_to include('is invalid')
      end
    end

    context 'when email is invalid' do
      let(:email) { 'invalid-email' }

      it 'is not valid' do
        expect(invitation).not_to be_valid
      end

      it 'does not have presence error on email' do
        invitation.valid?
        expect(invitation.errors[:email]).not_to include("can't be blank")
      end

      it 'has format error on email' do
        invitation.valid?
        expect(invitation.errors[:email]).to include('is invalid')
      end
    end
  end
end
