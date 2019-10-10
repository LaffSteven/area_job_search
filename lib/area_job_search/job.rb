class AreaJobSearch::JOB

  attr_accessor :title, :location, :url, :description

  @@all = []

  def initialize
    @@all << self
  end

end
