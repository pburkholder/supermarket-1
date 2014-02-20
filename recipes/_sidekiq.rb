#
# Author:: Brian Cobb (<brian@cramerdev.com>)
# Author:: Brett Chalupa (<brett@cramerdev.com>)
# Recipe:: sidekiq
#
# Copyright 2014 Chef Software, Inc.
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

directory '/etc/sidekiq' do
  mode '0755'
  recursive true
end

file '/etc/sidekiq/sidekiq.yml' do
  content node['supermarket']['sidekiq'].to_hash.to_yaml
  mode '0644'
end