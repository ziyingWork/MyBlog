require 'rails_helper'

RSpec.describe Account, :type => :model do
  # it "is valid with valid attributes" do
  #   expect(Account.new).to be_valid
  # end
  it "is not valid without a title" do
    auction = Account.new(name: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a description"
  it "is not valid without a start_date"
  it "is not valid without a end_date"
end