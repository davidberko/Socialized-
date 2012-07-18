require 'spec_helper'

describe 'Authentication' do

	subject { page }

	describe 'log in page' do
		before { visit log_in_path }

		it { should have_selector('h1', text: 'Log in') }
	end
end