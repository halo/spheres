require 'pathname'

homebrew_bin_path = File.join(ENV['BIOSPHERE_SPHERE_PATH'], 'homebrew', 'bin')
rbenv_executable  = File.join(homebrew_bin_path, 'rbenv')
bash_profile_path = File.join(ENV['BIOSPHERE_SPHERE_AUGMENTATIONS_PATH'], 'bash_profile')
ssh_config_path   = File.join(ENV['BIOSPHERE_SPHERE_AUGMENTATIONS_PATH'], 'ssh_config')

template bash_profile_path do
  source 'bash_profile.erb'
  variables({
    :homebrew_bin_path => homebrew_bin_path,
    :rbenv_excutable => rbenv_executable,
    :rbenv_root_path => node[:biosphere][:rbenv][:root],
  })
end

file ssh_config_path do
  content '# This came from cortana'
end