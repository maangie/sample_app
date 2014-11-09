require 'rails_helper'
require 'support/utilities'

RSpec.describe 'AuthenticationPages', type: :request do
  subject { page }

  describe 'signin page' do
    before { visit signin_path }

    it { is_expected.to have_content('Sign in') }
    it { is_expected.to have_title('Sign in') }
  end

  describe 'signin' do
    before { visit signin_path }

    describe 'with invalid information' do
      before { click_button 'Sign in' }

      it { is_expected.to have_title('Sign in') }
      it { is_expected.to have_error_message('Invalid') }

      describe 'after visiting another page' do
        before { click_link 'Home' }
        it do
          is_expected.not_to have_selector 'div.alert.fade.in.alert-danger'
        end
      end
    end

    describe 'with valid information' do
      let(:user) { FactoryGirl.create(:user) }
      before { valid_signin user }

      it { is_expected.to have_title user.name }
      it { is_expected.to have_link 'Profile', href: user_path(user) }
      it { is_expected.to have_link 'Sign out', href: signout_path }
      it { is_expected.not_to have_link 'Sign in', href: signin_path }

      describe 'followed by signout' do
        before { click_link 'Sign out' }
        it { is_expected.to have_link 'Sign in' }
      end
    end
  end
end
