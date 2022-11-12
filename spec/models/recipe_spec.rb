require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user = User.new(name: 'Fernando', email: 'fernando.silvabr66@gmail.com', password: '123456',
                     password_confirmation: '123456')
    @recipe = Recipe.new(name: 'Recipe-1', preparation_time: 1, cooking_time: 1, description: 'Test-1', public: true,
                         user: @user)
  end

  it 'name should be present' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
  
  it 'description should be present' do
    @recipe.description = nil
    expect(@recipe).to_not be_valid
  end
end
