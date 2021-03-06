require 'rails_helper'

RSpec.describe User, type: :model do
#subject {FactoryGirl.build(:user)}
  let(:user){ build(:user)}



it {expect(user).to validate_presence_of(:email)}
it {expect(user).to validate_uniqueness_of(:email).case_insensitive}
it {expect(user).to validate_confirmation_of(:password)}
it {expect(user).to validate_presence_of(:name)}
it {expect(user).to allow_value('gabriel@menezes.com').for(:email)}

end
