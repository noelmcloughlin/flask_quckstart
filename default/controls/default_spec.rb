# frozen_string_literal: true

title 'default profile'

control 'default' do
  impact 1.0
  title 'should be installed'

  describe package('ntp') do
    it { should be_installed }
  end
  describe service('ntp') do
    it { should be_enabled }
    it { should be_running }
  end
end
