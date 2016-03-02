#
# TeNOR - HOT Generator
#
# Copyright 2014-2016 i2CAT Foundation, Portugal Telecom Inovação
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class Image < Resource

	# Initializes Image object
	#
	# @param [String] resource_name the Image resource name
	# @param [String] disk_format Disk format of image
	# @param [String] location URL where the data for this image resides
	def initialize(resource_name, disk_format, location)
		@type = 'OS::Glance::Image'
		@properties = {'container_format' => 'bare', 'disk_format' => disk_format, 'location' => location, 'name' => resource_name}
		super(resource_name, @type, @properties)
	end
end