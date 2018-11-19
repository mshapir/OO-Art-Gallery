class Artist

  attr_reader :name, :years_active
  @@all =[]
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
  @@all
  end

def paintings
  Painting.all.select {|painting|  painting.artist == self }

end

def galleries
  paintings.map { |painting| painting.gallery }
end

def cities
  galleries.map { |gallery| gallery.city }
end
  def self.average_exp
    all.map { |artist| artist.years_active }.reduce(:+) / all.length
  end
end
