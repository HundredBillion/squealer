require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end
end

RSpec.describe User, type: :model do
  it "should save a user with fullname, and email address" do
    
  end   
end
