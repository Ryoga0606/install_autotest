describe 'should be able to login' do 
  let(:user) { FactoryGirl.creat(:user) }
  before do 
    visit login_path
    fill_in 'Email', with: user.email 
    fill_in 'Password', with: user.password 
    click_button 'Sign in'
  end
  it { should have_selector('h1', text: 'Welcome')}
end

#chap2
