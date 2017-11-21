

class Book

  attr_reader :title, :authors, :description
  attr_writer :title, :authors, :description

  @@all = []
  # ALL = []

  def initialize(title, authors, description)
    puts 'we are making books!'
    @title = title
    @authors = authors
    @description = description
    @@all << [self]
    binding.pry
    # here is where that code should go
  end

def self.all
  # puts "you're successfulling calling me"
  @@all
end
  #
  # def description
  #   @description
  # end
  #
  # def authors
  #   @authors
  # end

  def formatted_title
    self.title.split(' ').map {|word| word.capitalize }.join(' ')
  end



  def formatted_authors
    @authors.join(' & ')
  end



  def to_s
    "\"#{self.formatted_title}\" by #{self.formatted_authors}"
  end

  def self_printer
    self
  end

end
