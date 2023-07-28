require 'spec_helper'

describe package 'git' do
  it { is_expected.to be_installed }
end

describe file '/root/.gitconfig' do
  it { is_expected.to be_readable }
end

describe file '/root/.gitignore' do
  it { is_expected.to be_readable }
end

describe file '/root/.gitmessage' do
  it { is_expected.to be_readable }
end

describe package 'tmux' do
  it { is_expected.to be_installed }
end

describe file '/root/.tmux.conf' do
  it { is_expected.to be_readable }
end

describe package 'tig' do
  it { is_expected.to be_installed }
end

describe file '/root/.tigrc' do
  it { is_expected.to be_readable }
end

describe package 'vim' do
  it { is_expected.to be_installed }
end

describe file '/root/.vimrc' do
  it { is_expected.to be_readable }
end

describe file '/root/.vim' do
  it { is_expected.to be_directory }
end

describe file '/root/.gvimrc' do
  it { is_expected.to be_readable }
end

describe package 'wget' do
  it { is_expected.to be_installed }
end

describe package 'bash' do
  it { is_expected.to be_installed }
end

describe file '/root/.bash_profile' do
  it { is_expected.to be_readable }
end

describe file '/root/.bashrc' do
  it { is_expected.to be_readable }
end

describe package 'zsh' do
  it { is_expected.to be_installed }
end

describe file '/root/.zshenv' do
  it { is_expected.to be_readable }
end

describe file '/root/.zshrc' do
  it { is_expected.to be_readable }
end

describe package 'gcc' do
  it { is_expected.to be_installed }
end

describe package 'make' do
  it { is_expected.to be_installed }
end

describe package 'editorconfig' do
  it { is_expected.to be_installed }
end

describe file '/root/.editorconfig' do
  it { is_expected.to be_readable }
end

describe package 'rcm' do
  it { is_expected.to be_installed }
end

describe command 'USER=root RCRC=$HOME/dotfiles/rcrc rcup' do
  its(:stdout) { is_expected.to be_empty }
  its(:stderr) { is_expected.to be_empty }
  its(:exit_status) { is_expected.to eq 0 }
end

describe file '/root/.agignore' do
  it { is_expected.to exist }
end

describe file '/root/.aliases' do
  it { is_expected.to exist }
end

describe file '/root/.editorconfig' do
  it { is_expected.to exist }
end

describe file '/root/.gemrc' do
  it { is_expected.to exist }
end

describe file '/root/.Dockerfile' do
  it { is_expected.not_to exist }
end

describe file '/root/.Gemfile' do
  it { is_expected.not_to exist }
end

describe file '/root/.Gemfile.lock' do
  it { is_expected.not_to exist }
end

describe file '/root/.LICENSE' do
  it { is_expected.not_to exist }
end

describe file '/root/.README.md' do
  it { is_expected.not_to exist }
end

describe file '/root/.docs' do
  it { is_expected.not_to exist }
end
