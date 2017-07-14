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
