require "spec_helper"


module MelodyMaker
  describe Composer do
    describe "#compose" do

      it "returns an array" do
        Composer.new.compose.should be_a(Array)
      end

      it "returns an array with 9 elements by default" do
        expect(Composer.new.compose.size).to eq(9)
      end

      it "returns an array with X elements when X is passed in" do
        expect(Composer.new.compose(1).size).to eq(1)
        expect(Composer.new.compose(11).size).to eq(11)
      end

      it "each note is an integer" do
        Composer.new.compose.each do |note|
          expect(note).to be_a(Integer)
        end
      end

      it "each note is a 15 or less" do
        Composer.new.compose.each do |note|
          expect(note).to be <= 15
        end
      end
    end
  end
end
