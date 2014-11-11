#
# Cookbook Name:: ec2-cli
# Recipe:: default
#
# Copyright 2014, BabyCenter, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

bash  "insert_line" do
user "root"
code <<-EOH
    
    echo "BABYCENTER CHEF" >> /etc/motd
    EOH
  not_if "grep -q BABYCENTER /etc/motd"
end

cookbook_file "/var/www/html/k2.jpg" do
  source "k3.jpg"
  owner "root"
  group "root"
  mode 00644
  action :create_if_missing
 end


