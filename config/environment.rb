require 'bundler'
Bundler.require
# require_relative '../lib/song_basics.rb'
# require_relative '../lib/songs.rb'
# require_relative '../lib/artists.rb'
# require_relative '../lib/genres.rb'
module Concerns
  module Findable

  end
  # module Findable
  #   def find_by_name(name)
  #     self.all.detect{|s| s.name == name}
  #   end
  #
  #   def find_or_create_by_name(name)
  #     self.find_by_name(name) || self.create(name)
  #   end
  # end
end

require_all 'lib'
