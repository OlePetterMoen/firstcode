require 'rspec'
require 'spec_helper'
require_relative 'firstcode'

describe Price do
  describe "it should give the correct output" do
    it "1MAX should return 1000" do
      Price.total_course_calculation(["1MAX"]).should include "Total Price: 1000"
    end
    it "1MAX 1MAL should return 4000" do
      Price.total_course_calculation(["1MAX", "1MAL"]).should include "Total Price: 4000"
    end
    it "1TAX 1MAL should return 5700" do
      Price.total_course_calculation(["1TAX", "1MAL"]).should include "Total Price: 5700"
    end
    it "3TAE 1MAE 2TAC should return 25100" do
      Price.total_course_calculation(["3TAE", "1MAE", "2TAC"]).should include "Total Price: 25100"
    end
  end
end
