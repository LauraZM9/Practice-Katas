require_relative '../bowling'

describe Bowling do
    it "adds two rolls together" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.do_something("45")

        # Assert
        expect(result).to eq(9)
    end
end 