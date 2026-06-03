function fish_right_prompt
    if test $CMD_DURATION -gt 100
        echo (math "$CMD_DURATION / 1000")s
    end
end
