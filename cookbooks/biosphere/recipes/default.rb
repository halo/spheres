log %{HOME: #{ENV['HOME']}}
log %{BIOSPHERE_HOME: #{ENV['BIOSPHERE_HOME']}}
log %{BIOSPHERE_SPHERE_PATH: #{ENV['BIOSPHERE_SPHERE_PATH']}}

include_recipe 'biosphere::homebrew'