class Bowling
    def get_score_frame(frame)
        first_roll = frame[0].to_i
        second_roll = frame[1].to_i
        score = first_roll + second_roll
        score
    end
end