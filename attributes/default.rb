default['install']['dir']                        = ""
default['install']['user']                       = ""

default['conda']['version']                      = "5.2.0"
# the version of python: either '2' or '3'
default['conda']['python']                       = "2"

# node['download_url'] is not set unless overwritten in the cluster definition. If it's not overwritten, download the artifact from snurran
default['conda']['url']                          = node.attribute?(:download_url) ? node['download_url'] + "/Anaconda#{node['conda']['python']}-#{node['conda']['version']}-Linux-x86_64.sh" : "http://snurran.sics.se/hops/Anaconda#{node['conda']['python']}-#{node['conda']['version']}-Linux-x86_64.sh"

default['conda']['user']                         = node['install']['user'].empty? ? 'anaconda' : node['install']['user']
default['conda']['group']                        = node['install']['user'].empty? ? 'anaconda' : node['install']['user']

default['conda']['dir']                          = node['install']['dir'].empty? ? "/srv/hops/anaconda" : node['install']['dir'] + "/anaconda"

default['conda']['home']                         = "#{node['conda']['dir']}/anaconda-#{node['conda']['python']}-#{node['conda']['version']}"
default['conda']['base_dir']                     = "#{node['conda']['dir']}/anaconda"

default['conda']['mirror_list']                  = ""
default['conda']['use_defaults']                 = "true"
