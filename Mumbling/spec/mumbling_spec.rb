require_relative '../mumbling'

describe Mumbling do 
    mumble = Mumbling.new
    it "handles one letter strings" do
        mumbled_letters = mumble.mumble_letters("a")

        expect(mumbled_letters).to eq("something")
    end
end