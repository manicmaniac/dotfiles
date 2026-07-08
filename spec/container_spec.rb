require 'spec_helper'

describe package 'git' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.gitconfig' do
  it { is_expected.to be_readable }
end

describe file '/home/user/.gitignore' do
  it { is_expected.to be_readable }
end

describe file '/home/user/.gitmessage' do
  it { is_expected.to be_readable }
end

describe package 'tmux' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.tmux.conf' do
  it { is_expected.to be_readable }
end

describe package 'tig' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.tigrc' do
  it { is_expected.to be_readable }
end

describe package 'vim' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.vimrc' do
  it { is_expected.to be_readable }
end

describe file '/home/user/.vim' do
  it { is_expected.to be_directory }
end

describe file '/home/user/.gvimrc' do
  it { is_expected.to be_readable }
end

describe package 'wget' do
  it { is_expected.to be_installed }
end

describe package 'bash' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.bash_profile' do
  it { is_expected.to be_readable }
end

describe file '/home/user/.bashrc' do
  it { is_expected.to be_readable }
end

describe package 'zsh' do
  it { is_expected.to be_installed }
end

describe file '/home/user/.zshenv' do
  it { is_expected.to be_readable }
end

describe file '/home/user/.zshrc' do
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

describe file '/home/user/.editorconfig' do
  it { is_expected.to be_readable }
end

describe package 'rcm' do
  it { is_expected.to be_installed }
end

describe command 'USER=user RCRC=$HOME/dotfiles/rcrc rcup' do
  its(:stdout) { is_expected.to be_empty }
  its(:stderr) { is_expected.to be_empty }
  its(:exit_status) { is_expected.to eq 0 }
end

describe file '/home/user/.agignore' do
  it { is_expected.to exist }
end

describe file '/home/user/.aliases' do
  it { is_expected.to exist }
end

describe file '/home/user/.editorconfig' do
  it { is_expected.to exist }
end

describe file '/home/user/.gemrc' do
  it { is_expected.to exist }
end

describe file '/home/user/.Dockerfile' do
  it { is_expected.not_to exist }
end

describe file '/home/user/.Gemfile' do
  it { is_expected.not_to exist }
end

describe file '/home/user/.Gemfile.lock' do
  it { is_expected.not_to exist }
end

describe file '/home/user/.LICENSE' do
  it { is_expected.not_to exist }
end

describe file '/home/user/.README.md' do
  it { is_expected.not_to exist }
end

describe file '/home/user/.docs' do
  it { is_expected.not_to exist }
end
