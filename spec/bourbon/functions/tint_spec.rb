require "spec_helper"

describe "tint" do
  before(:all) do
    ParserSupport.parse_file("functions/tint")
  end

  context "called on white" do
    it "still returns white" do
      expect(".tint-white").to have_rule("color: white")
    end
  end

  context "called on black" do
    it "tints black" do
      expect(".tint-black").to have_rule("color: #7f7f7f")
    end
  end

  context "called on red" do
    it "tints red" do
      expect(".tint-red").to have_rule("color: #ff3f3f")
    end
  end

  context "called on gray" do
    it "tints gray" do
      expect(".tint-gray").to have_rule("color: #c6c6c6")
    end
  end
end
