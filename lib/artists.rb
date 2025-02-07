class Artist
  extend Concerns::Findable
  # attr_reader :songs
  #
  # def initialize(name)
  #   super
  #   @songs = []
  # end
  #
  # def add_song(song)
  #   song.artist = self unless song.artist
  #   songs << song unless songs.include?(song)
  # end
  attr_accessor :name
  attr_reader :songs, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def genres
    songs.map { |e| e.genre }.uniq
  end
end
