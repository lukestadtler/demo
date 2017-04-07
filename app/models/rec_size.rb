class RecSize < ApplicationRecord

  def self.largest_rectangle(chart)
    largestArea = 0
    chart.each_with_index do|height,index|

      size = height * index + 1

      if index != 0
        while chart[index - 1] >= height
          size = height * height
        end
      end

      if size > largestarea
        largest_area =  size
      end
    end
    return largest_area
  end
end

#data structures

# Array of hash pairs - [{h: 1, w: 1}, {h: 2, w: 1}]
# Array of heights - [1,2,1,4,3,1]
# Array of array pairs - [[0,1], [1,2], [2,1]...]