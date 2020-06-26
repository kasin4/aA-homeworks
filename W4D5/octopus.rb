
require 'byebug'
def clever_octopus(array)

    big_fish = array[0]

    (0...array.length).each do |i|
        if array[i].length > big_fish.length
            big_fish  = array[i]
        end 
    end

    return big_fish
    
end

fishs = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p clever_octopus(fishs)


def sluggish_octopus(array)
    long_fish = array[0]
    (0...array.length).each do |i|
        (i...array.length).each do |i2|
            if array[i].length > long_fish.length || array[i2].length > long_fish.length
                if array[i2].length > array[i].length &&
                    long_fish = array[i2]
                else 
                    long_fish = array[i]
                end
            end
        end
    end
    long_fish
end

p sluggish_octopus(fishs)

def dominant_octopus(array)
   arr = array.sort_by { |word| word.length }
   arr[-1]
end

p dominant_octopus(fishs)

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
