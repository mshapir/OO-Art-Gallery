require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("Manny", 10.5)
artist2 = Artist.new("John", 12.0)
artist3 = Artist.new("Mary", 11)
artist4 = Artist.new("Sunny", 23.3)
artist5 = Artist.new("Jack", 5.0)

gallery1 = Gallery.new("Gallery-BK", "Brooklyn")
gallery2 = Gallery.new("Gallery- QNS", "Queens")
gallery3 = Gallery.new("Gallery- MAN", "Manhattan")
gallery4 = Gallery.new("Gallery- SI", "Staten Island")
gallery5 = Gallery.new("Gallery- NJ", "Hoboken")


painting1 = Painting.new("Mona Lisa", "Abstract", artist4, gallery1)
painting2 = Painting.new("J3", "impressionist", artist4, gallery2)
painting3 = Painting.new("A5", "finger painting", artist5, gallery1)
painting4 = Painting.new("TT48", "Abstract", artist3, gallery4)
painting5 = Painting.new("Iron Dome", "finger painting", artist1, gallery5)
painting6 = Painting.new("Vemodalen", "impressionist", artist2, gallery3)

binding.pry
0
