execute 'install nodejs' do
  command 'curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -'
not_if 'which node'
end

package 'nodejs'
