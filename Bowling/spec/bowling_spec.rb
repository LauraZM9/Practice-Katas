require_relative '../bowling'

describe Bowling do
    it "adds two rolls together" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("45")

        # Assert
        expect(result).to eq(9)
    end

    it "adds two other rolls together" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("32")

        # Assert
        expect(result).to eq(5)
    end

    it "adds a roll and a miss" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("9-")   

        # Assert
        expect(result).to eq(9)
    end

    it "adds a roll and a spare" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("5/")      

        # Assert
        expect(result).to eq(10)
    end

    it "adds a strike" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("X")      

        # Assert
        expect(result).to eq(10)
    end

    it "adds two frames with first one being a number" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("45 32")      

        # Assert
        expect(result).to eq(14)
    end

    it "adds two frames with first one strike and second number" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_total_score("X 45")      

        # Assert
        expect(result).to eq(28)
    end
end 

# "45 32"
# "45 9-"
# "45 X"
# "45 5/"
# "X X" *
# "X 45"
# "X 5/" *
# "X 9-" *
# "5/ 9-" *
# "5/ 5/" *
# "9- 9-"