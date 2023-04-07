module MyEnumerable
    def all?
      @list.each { |el| return false unless yield el }
      true
    end

    def any?
        @list.each { |el| return true if yield el }
        false
      end
  
    def filter
      result = []
      @list.each {|el| result.push(el) if yield el}
      result
    end
  
    #optional

    def max(&block)
        if block_given?
          result = []
          @list.each { |el| result << el if yield(el) }
          result
        else
          @list.max
        end
      end
    
  end
  