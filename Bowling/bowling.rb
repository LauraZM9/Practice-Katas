class Bowling
    def get_score_frame(frame)
        first_roll = frame[0]  
        second_roll = frame[1]         # '-'.to_i -> 0???
        if second_roll == "/" 
            score = 10
        else
            score = first_roll.to_i + second_roll.to_i
        end
        score
    end
end 