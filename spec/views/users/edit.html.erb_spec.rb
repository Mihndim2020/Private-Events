require 'spec_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
                            name: 'Eri'
                          ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
    assert_select 'input[name=?]', 'user[name]'
    end
  end
end



#RSpec.describe 'Hello world', type: :system do
 # describe 'index page' do
   # it 'shows the right content' do
     # visit hello_world_index_path
      #expect(page).to have_content('Hello, world!')
   # end
 # end
#end