# copyright: 2021, John Tonello

title 'Ensure user jtonello exists'

control 'create-user' do
  impact 1.0
  title 'Create user jtonello'
  desc 'Check if user jtonello exists'
  describe user('jtonello').exists? do
    it { should be true }
  end
end
