require_relative '../bowling'

describe Bowling do
    it "does something" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.do_something("something")

        # Assert
        expect(result).to eq("something")
    end
end 