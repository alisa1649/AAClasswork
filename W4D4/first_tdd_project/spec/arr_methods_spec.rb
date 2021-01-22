require "rspec"
require "arr_methods"

describe "Array" do
  describe "#my_uniq" do
    it "removes duplicates from the array" do
      expect([1, 1, 2, 3, 3].my_uniq).to eq([1, 2, 3])
    end
    it "should return an array" do
      expect([1, 2, 3, 4].my_uniq.class).to be(Array)
    end
  end
  describe "#two_sum" do
    it "finds all pairs of positions where the elements sum to zero" do
      expect([-1, 0, 1, 2, -2].two_sum).to eq([[0, 2], [3, 4]])
    end
    it "returns pairs in ascending numerical order by index" do
      expect([3, 1, 0, -3, 1, 6, -6].two_sum).to eq([[0, 3], [5, 6]])
    end
    it "returns [] when no pairs are found" do
      expect([3, 1, 0, -2, 1, 5, -6].two_sum).to eq([])
    end
  end
  describe "#my_transpose" do
    let(:first_arr) { [1, 2, 3, 4] }
    let(:second_arr) { ["a", "b", "c", "d"] }
    let(:third_arr) { [5, 6, 7, 8] }
    let(:fourth_arr) { ["e", "f", "g", "h"] }

    it "should accept a two dimensional array as argument" do
      expect { [first_arr, second_arr, third_arr, fourth_arr].my_transpose }.to_not raise_error
    end
    it "should return a two dimensional array where each subarray contains the elements at the same index" do
      expect([first_arr, second_arr].my_transpose).to eq([
                                                           [1, "a"],
                                                           [2, "b"],
                                                           [3, "c"],
                                                           [4, "d"],
                                                         ])
      expect([third_arr, fourth_arr].my_transpose).to eq([
                                                        [5, "e"],
                                                        [6, "f"],
                                                        [7, "g"],
                                                        [8, "h"],
                                                      ])
    end
  end
  describe "#stock_picker" do
    it "accepts an array of stock prices as argument" do
      expect { [75, 55, 26, 40, 30, 90].stock_picker }.to_not raise_error
      expect { [28, 55, 31, 25, 300, 10].stock_picker }.to_not raise_error
    end
    it "returns the most profitable pair of days to buy and sell stocks" do
      expect([4, 11, 2, 5, 3, 8, 4, 7, 1].stock_picker).to eq([0, 1])
    end
  end
end
