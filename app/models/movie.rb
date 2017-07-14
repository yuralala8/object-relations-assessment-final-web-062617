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
