class Bowling
    def get_total_score(frames)
        frames_list = frames.split(" ")
        score = 0
        frames_list.each do |frame|
            if frame == "X" && frames_list.index(frame) < frames_list.length - 1
                next_frame = frames_list[frames_list.index(frame) + 1]
                score += 10 + get_score_frame(next_frame)
            else
                score += get_score_frame(frame)
            end
        end
        score
    end

    def get_score_frame(frame)
        if frame == "X"
            score = 10
        else
            first_roll = frame[0]  
            second_roll = frame[1]         # Anything else besides digit will be: '-'.to_i -> 0
            if second_roll == "/" 
                score = 10
            else
                score = first_roll.to_i + second_roll.to_i
            end
        end
        score 
    end
end 