class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
   def self.new_by_name(name)
    song = self.new 
    song.name = name
    
    song
  end
  def self.create 
    song =self.new
    song
  end 
  def self.create_by_name(name)
    song = Song.create
    song.name =name
    @@all << song
    song
  end

  def self.find_or_create_by_name(name)
      self.all.find{|song| song.name == name}
      song = create_by_name(name)
      song = find_by_name(name)
   end
  
  def self.find_by_name(name)
      self.all.find{|song| song.name == name}
  end
  def self.alphabetical
    self.all.sort_by{|x| x.name}
    
  end
  def self.destroy_all
    self.all.clear
  end
end
#song = Song.create
#Song.all.include?(song)