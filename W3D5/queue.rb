def Queue
    attr_reader :underlying_array
    def initialize
        @queue_array = []
    end

    def enqueue(el)
        @queue_array << el
    end

    def dequeue
        @queue_array.shift
    end

    def peek
        @peek[0]
    end

end