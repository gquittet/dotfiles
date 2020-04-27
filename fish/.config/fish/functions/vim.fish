function vim
    if command -q nvim
        command nvim
    else
        command vim
    end
end

