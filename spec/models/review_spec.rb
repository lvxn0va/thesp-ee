require File.dirname(__FILE__) + '/../spec_helper'

describe Review do
  it "should be valid" do
    Review.new.should be_valid
  end
end
