#
# Cookbook Name:: m4
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/motomaker_1.0-SNAPSHOT_all.deb" do
  source "https://s3-us-west-1.amazonaws.com/playframework/motomaker_1.0-SNAPSHOT_all.deb"
  mode 0644
end

dpkg_package "motomaker" do
  action :install
  source '/tmp/motomaker_1.0-SNAPSHOT_all.deb'
end