require 'rails_helper'

RSpec.describe Headline, type: :model do
  let(:title) { Faker::Book.title }
  let(:content) { Faker::Lorem.paragraphs }
  let(:headline) { FactoryBot.build(:headline, title: title, content: content) }

  describe 'relationship' do
    it { expect(headline).to belong_to(:user) }  
  end

  describe '#title' do
    context 'when empty' do
      let(:title) { '' }

      it 'will error' do
        expect(headline).to_not be_valid
      end
    end

    context 'when valid' do
      it 'will succeed' do
        expect(headline).to be_valid
      end
    end
  end

  describe '#content' do
    context 'when empty' do
      let(:content) { '' }

      it 'will error' do
        expect(headline).to_not be_valid
      end
    end

    context 'when valid' do
      it 'will succeed' do
        expect(headline).to be_valid
      end
    end
  end
end
