require 'spec_helper'
describe 'gitversion' do

  context 'with default values for all parameters' do
    it { should contain_class('gitversion') }
  end
end
