require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Fernando', email: 'fernando.silvabr66@gmail.com', password: '123456',
                     password_confirmation: '123456')
  end

  it 'name should be present' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'email should be present' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'password should be present' do
    @user.password = nil
    expect(@user).to_not be_valid
  end
end
