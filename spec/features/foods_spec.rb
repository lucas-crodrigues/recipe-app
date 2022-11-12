require 'rails_helper'

RSpec.feature 'Foods', type: :feature do
  before(:each) do
    @user = User.new(name: 'Fernando', email: 'fernando.silvabr66@gmail.com', password: '123456',
                     password_confirmation: '123456')
    @food = Food.new(name: 'Test Food', measurement_unit: 'Kg', price: 10, user: @user)
  end

  it 'is valid with a name' do
    expect(@food.name).to eq('Test Food')
  end

  it 'belongs to a user' do
    expect(@food.user).to eq(@user)
  end

  it 'has a price' do
    expect(@food.price).to eq(10)
  end

  it 'has a measurement unit' do
    expect(@food.measurement_unit).to eq('Kg')
  end
end
