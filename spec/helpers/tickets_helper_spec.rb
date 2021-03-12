require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TIcketsHelper. For example:
#
# describe TIcketsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TicketsHelper, type: :helper do
  describe '#format_phone_number' do
    it 'returns a number with a country code' do
      formatted_phone_number = '+15413334444'
      expect(format_phone_number('5413334444')).to eq(formatted_phone_number)
    end
  end

  it 'returns nil when number is invalid' do
    expect(format_phone_number('NOT A PHONE NUMBER')).to be_nil
  end
end
