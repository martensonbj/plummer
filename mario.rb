class Mario
  attr_reader :height, :character
  def initialize
    @height = height_of_wall
    @character = find_character
    create_wall
  end

  def height_of_wall
    puts "How high do you want your wall?"
    height = gets.chomp
    height.to_i
  end

  def find_character
    puts "What character is your wall made of?"
    character = gets.chomp
  end

  def create_wall
      array = []
      repeat = height
      repeat.times do |i|
        array << (character * repeat)
        repeat -= 1
      end

      array.reverse!
      array.each do |string|
        puts string.rjust(height)
      end
  end
end
