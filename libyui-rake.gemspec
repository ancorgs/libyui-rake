#--
# Copyright (C) 2015 SUSE LLC
#   This library is free software; you can redistribute it and/or modify
# it only under the terms of version 2.1 of the GNU Lesser General Public
# License as published by the Free Software Foundation.
#
#   This library is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
# details.
#
#   You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
#++

Gem::Specification.new do |spec|
  # gem name and description
  spec.name	= "libyui-rake"
  spec.version	= File.read(File.expand_path("../VERSION", __FILE__)).chomp
  spec.summary	= "Rake tasks that provide basic work-flow for libyui development"
  spec.license    = "LGPL v2.1"

  # author
  spec.author	= "YaST team"
  spec.email	= "yast-devel@suse.com"
  spec.homepage	= "http://github.org/openSUSE/libyui-rake"

  spec.summary = "Rake tasks providing basic work-flow for libyui development"
  spec.description = <<-end
Rake tasks that support work-flow of libyui developer. It allows packaging repo,
send it to build service, create submit request to target repo or run client
from git repo. Heavily inspired in yast-rake.
end

  # gem content
  spec.files   = Dir["lib/**/*.rb", "lib/tasks/*.rake", "data/*", "COPYING", "README.md", "VERSION"]

  # define LOAD_PATH
  spec.require_path = "lib"

  # dependencies
  spec.add_dependency("rake", "~> 10.0")
  spec.add_dependency("packaging_rake_tasks", "~> 1.0")
end
