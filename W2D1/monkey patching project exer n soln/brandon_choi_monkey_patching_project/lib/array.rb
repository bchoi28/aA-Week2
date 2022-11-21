# # # Monkey-Patch Ruby's existing Array class to add your own custom methods
# # class Array
# #     def span
# #          if self.empty?
# #             return nil
# #         end
# #         self.max - self.min
# #     end

# #     def average
# #         if self.empty?
# #             return nil
# #         end
# #         self.sum / (self.length * 1.0)
# #     end

# #     def median
# #         return nil if self.empty?
# #         mid_index = self.length / 2
# #         sorted = self.sort
# #         if sorted.length.odd?
# #             return sorted[mid_index]
# #         else
# #             return (sorted[mid_index - 1] + sorted[mid_index]) / 2.0
# #         end
# #     end

# #     def counts
# #         count = Hash.new(0)
# #         self.each {|ele|count[ele]+=1}
# #         return count
# #     end

# #     def my_count(val)
# #         counter = 0
# #         self.each {|ele|counter += 1 if ele == val}
# #         counter
# #     end

# #     def my_index(val)
# #         return nil if !self.include?(val)
# #         self.each_with_index do |ele, idx|
# #             if ele == val
# #                 return idx
# #             end
# #         end
# #     end

# #     def my_uniq
# #         elements = {}
# #         self.each {|ele|elements[ele]=true}
# #         elements.keys
# #     end

# #     def my_transpose
# #         transposed = []

# #      self.each_with_index do |ele1, idx1|
# #         row = []

# #         self.each_with_index do |ele2, idx2|
# #             row << self[idx2][idx1]
# #         end

# #         transposed << row
# #     end

# #         transposed
# #     end

# # end





class Array

    def span
        return nil if self.empty?
        self.max - self.min
    end

    def average 
        return nil if self.empty?
        self.sum / (self.length * 1.0)
    end

    def median
        return nil if self.empty?
        if self.length.odd?
            sorted = self.sort
            middle_idx = sorted.length / 2
            return sorted[middle_idx]
        else
            sorted = self.sort
            left_middle = (sorted.length - 1) / 2
            right_middle = (sorted.length / 2)
            return (sorted[left_middle] + sorted[right_middle]) / 2.0
        end
    end

    def counts
        count = Hash.new(0)
        self.each do |ele|
            count[ele] += 1
        end
        count
    end

    def my_count(val)
        count = 0
        self.each do |ele|
            if ele == val
                count += 1
            end
        end
        count
    end

    def my_index(val)
        self.each_with_index do |ele, idx|
            if ele == val
                return idx
            end
        end
        return nil
    end

    def my_uniq
        hash = Hash.new
        self.each do |ele|
            hash[ele] = true
        end
        hash.keys
    end

    def my_transpose
        transposed = []
      
        (0...self.length).each do |idx1|
            arr = []
            (0...self.length).each do |idx2|
                arr << self[idx2][idx1]
            end
            transposed << arr
        end

        transposed
    end


end

