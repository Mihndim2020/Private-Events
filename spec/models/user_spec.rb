require 'spec_helper'
require 'rails_helper'

# RSpec.describe User, type: :model do
#   context 'with 2 or more comments' do
#     it 'orders them in reverse chronologically' do
#       post = Post.create!
#       comment1 = post.comments.create!(body: 'first comment')
#       comment2 = post.comments.create!(body: 'second comment')
#       expect(post.reload.comments).to eq([comment2, comment1])
#     end
#   end
# end

RSpec.describe User, type: :model do
  describe 'A user can be created' do
    let(:name) { 'simple name' }

    it 'user is valid if it has name' do
      user = User.create(name: 'username')
      expect(user).to be_valid
    end

    it 'user is not valid if name is not present' do
      user = User.create()
      expect(user).to_not be_nil
    end

    it 'validation error for missing name on user' do
      user = User.create(name: nil)
      user.validate
      expect(user.errors[:name]).to include("can't be blank")
    end
  end
end