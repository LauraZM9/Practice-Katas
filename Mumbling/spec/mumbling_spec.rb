require_relative '../mumbling'

describe Mumbling do 
    mumbling = Mumbling.new

    it "with one letter string" do
        mumbled_letters = mumbling.mumble_letters("a")
        expect(mumbled_letters).to eq("A")
    end

    it "with two letters string" do
        mumbled_letters = mumbling.mumble_letters("ab")
        expect(mumbled_letters).to eq("A-Bb")
    end

    it "with 3 letters string and some capitals" do
        mumbled_letters = mumbling.mumble_letters("abC")
        expect(mumbled_letters).to eq("A-Bb-Ccc")
    end

    it "with 4 letters string and some capitals" do
        mumbled_letters = mumbling.mumble_letters("aBCd")
        expect(mumbled_letters).to eq("A-Bb-Ccc-Dddd")
    end

    it "with 6 letters string all capitals" do
        mumbled_letters = mumbling.mumble_letters("QWERTY")
        expect(mumbled_letters).to eq("Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy")
    end

    it "with 7 letters string and some capitals" do
        mumbled_letters = mumbling.mumble_letters("RqaEzty")
        expect(mumbled_letters).to eq("R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
    end
end