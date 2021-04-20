#失敗例
describe 'When creating a new user' do 
  subject { page } 
  describe 'with valid credentials' do 
    before do 
      visit signup_path
      fill_in 'Name', with: 'New User'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'foobar'
      fill_in 'Confirmation', with: 'foobar'
      click_button 'Create my account'
    end
    describe 'after saving the user' do 
      let(:user) { User.find_by(email: 'user@example.com') }

      it { should have_content(user.name) }
      it { should have_selector('.alert-success' ) }
    end
  end
end


describe 'When creating a new user' do 
  subject { page } 
  describe 'with valid credentials' do 
    before do 
      visit signup_path
      fill_in 'Name', with: 'New User'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'foobar'
      fill_in 'Confirmation', with: 'foobar'
      click_button 'Create my account'
    end
    describe 'after saving the user' do 
      let(:user) { User.find_by(email: 'user@example.com') }

      it { should have_title(user.name) }
      it { should have_selector('.alert-success') }
    end
  end
  describe 'with invalid credentials' do 
    before do 
      visit signup_path
      click_button 'Creat my account'
    end
    it { should have_selector('.alert-account') }
  end
end
#chap3

