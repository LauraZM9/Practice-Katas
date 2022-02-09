require_relative '../bowling'

describe Bowling do
    it "adds two rolls together" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score_frame("45")

        # Assert
        expect(result).to eq(9)
    end

    it "adds two other rolls together" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score_frame("32")

        # Assert
        expect(result).to eq(5)
    end

    it "adds a roll and a miss" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score_frame("9-")   

        # Assert
        expect(result).to eq(9)
    end

    it "adds a roll and a miss" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score_frame("9-")      

        # Assert
        expect(result).to eq(9)
    end

    it "adds a roll and a spare" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score_frame("5/")      

        # Assert
        expect(result).to eq(10)
    end
end 