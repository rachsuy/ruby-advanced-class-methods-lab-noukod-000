class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
def self.create
  song =Song.new 
  song = song.save
  
end

def self.find_or_create_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
end
song = Song.create
Song.all.include?(song)