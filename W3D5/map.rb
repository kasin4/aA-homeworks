class Map
    attr_reader :map_arr
    def initialize 
        @map_arr = Array.new
    end

    def set(key, value)
        pair = [key, value]

        if !self.has_key?(key)
            @map_arr << pair
        else
            idx = self.pair_index(key)
            self[idx] = pair
        end

    end

    def pair_index(key)
        if has_key?(key)
            (0...@map_arr.length).each {|i| return i if @map_arr[i][0] == key }
        end
    end

    def has_key?(key)
        (0...@map_arr.length).each {|i| return true if @map_arr[i][0] == key }
        false
    end
    
    def [](index)
        map_arr[index]
    end

    def get(key)
        if self.has_key?(key)
            (0...@map_arr.length).each {|i| return @map_arr[i][1] if @map_arr[i][0] == key }
        end
        raise 'key does not exist'
    end

    def []=(index, new_pair)
        @map_arr[index] = new_pair
    end

    def delete(key)
        idx = self.pair_index(key)
        @map_arr.delete_at(idx)
    end

    def show
        p @map_arr
    end
end