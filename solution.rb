########## Viewer class ##########

class Viewer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|viewer| viewer.full_name == name}
  end

  def create_rating(score, movie)
    rating = Rating.new(score, self, movie)
  end

end

########## Rating class ##########

class Rating
  attr_accessor :score, :viewer, :movie
  @@all = []

  def initialize(score, viewer, movie)
    @score = score
    @viewer = viewer
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end

end


########## Movie class ##########


class Movie
  attr_accessor :title, :score
  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_title(title)
    self.all.find {|movie| movie.title == title}
  end

  def ratings
    Rating.all.select {|rating| rating.movie == self}
  end

  def viewers
    self.ratings.map do |rating|
      rating.viewer
    end
  end

  def score
    self.ratings.collect do |rating|
      rating.score
    end
  end

  def score_sum
    self.score.inject( nil ) { |sum,x| sum ? sum+x : x }
  end

  def average_rating
    self.score_sum / self.score.size.to_f
  end


end
