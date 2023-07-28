require 'rails_helper'

RSpec.describe Ticket, type: :model do
   describe "associations" do

    it "has many excavators" do
      expect(Ticket.reflect_on_association(:excavators).macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    subject(:ticket) { Ticket.new }
 
    context 'when request_number is not unique' do
      before { create(:ticket, request_number: '12345') }
      it 'is not valid' do
        ticket.request_number = '12345'
        expect(ticket).not_to be_valid
      end
    end

    context 'when sequence_number is not unique' do
      before { create(:ticket, sequence_number: 'ABCDE') }
      it 'is not valid' do
        ticket.sequence_number = 'ABCDE'
        expect(ticket).not_to be_valid
      end
    end
  end
end
