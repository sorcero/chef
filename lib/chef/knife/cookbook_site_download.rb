#
# Author:: Adam Jacob (<adam@chef.io>)
# Copyright:: Copyright 2009-2019, Chef Software, Inc.
# License:: Apache License, Version 2.0
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

require_relative "../knife"
require_relative "supermarket_download"

class Chef
  class Knife
    class CookbookSiteDownload < Knife::SupermarketDownload

      # Handle the subclassing (knife doesn't do this :()
      dependency_loaders.concat(superclass.dependency_loaders)
      options.merge!(superclass.options)

      banner "knife cookbook site download COOKBOOK [VERSION] (options)"
      category "deprecated"

      def run
        Chef::Log.warn("knife cookbook site download has been deprecated in favor of knife supermarket download. In Chef 16 (April 2020) this will result in an error!")
        super
      end

    end
  end
end
