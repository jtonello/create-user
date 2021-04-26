#
# Cookbook:: create-user
# Recipe:: user
#
# Copyright:: 2021, John Tonello, All Rights Reserved.
if platform?('windows')
  user 'tonello' do
    manage_home true
    comment 'tonello'
    system 'true'
    home 'C:\Users\tonello'
    password '$6$Jp0v.n9wiW2g3MV4$dMO0BSUFIyo/rnh/Mc1IjpgXfiM4win2Dz6svx4RzBgnKCiexnKVHHW16YtDfc4bQIjvUOtybJw.sVSoTBFVw1'
    action :create
  end
else
  user 'tonello' do
    manage_home true
    comment 'tonello'
    system true
    home '/home/tonello'
    shell '/bin/bash'
    password '$6$Jp0v.n9wiW2g3MV4$dMO0BSUFIyo/rnh/Mc1IjpgXfiM4win2Dz6svx4RzBgnKCiexnKVHHW16YtDfc4bQIjvUOtybJw.sVSoTBFVw1'
    action :create
  end

  package 'sudo' do
    action :install
  end

  sudo 'tonello' do
    user 'tonello'
    nopasswd true
  end

  cookbook_file '/home/tonello/.bashrc' do
    group 'tonello'
    owner 'tonello'
    source 'bashrc'
  end
end
