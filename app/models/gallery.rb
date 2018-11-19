class Gallery

  attr_reader :name, :city
  @@all = []
def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
@@all
end

def self.cities
 all.map { |gallery| gallery.city }.uniq
end

def paintings
  Painting.all.select {|painting|  painting.gallery == self }
end

def artists
  paintings.map { |painting| painting.artist }
end

def artists_name
  artists.map { |artist| artist.name }
end

def years_exp_artist
  artists.map { |artist| artist.years_active }.reduce(:+) 
end

end
