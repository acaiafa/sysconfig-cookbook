#
# Cookbook: sysconfig
#
# Copyright (c) 2016 Bloomberg L.P., All Rights Reserved.
#

sysconfig node['sysconfig']['service_name'] do |r|
    node['sysconfig']['config'].each_pair { |k, v| r.send(k, v) }
end
