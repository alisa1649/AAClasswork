require "byebug"

class Array
  def my_uniq
    result = []
    self.each do |ele|
      if !result.include?(ele)
        result << ele
      end
    end
    return result
  end

  def two_sum
    result = []
    self.each_with_index do |ele, i|
      self.each_with_index do |ele2, j|
        if i > j && ele + ele2 == 0
          result << [j, i]
        end
      end
    end
    return result
  end

  def my_transpose
    length = self.length
    width = self.first.length
    result = Array.new(width) { Array.new(length) }
    self.each_with_index do |row, i| #self = [[1, 2, 3, 4], ["a", "b", "c", "d"]]
      row.each_with_index do |ele, j|
        # debugger
        result[j][i] = self[i][j]
      end
    end
    return result
  end

  def stock_picker
    best_buy = 0
    best_sell = 0
    greatest_diff = 0
    self.each_with_index do |buy, i|
      self.each_with_index do |sell, j|
        if i < j && (buy < sell) && (sell - buy) > greatest_diff
          best_buy = i
          best_sell = j
          greatest_diff = (sell - buy)
        end
      end
    end
    return [best_buy, best_sell]
  end
end
