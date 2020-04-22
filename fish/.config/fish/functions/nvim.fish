function nvim
    begin
        set -lx NVIM_LISTEN_ADDRESS (mktemp -u "/tmp/nvimsocket-XXXXXXXXX")
        command nvim $argv
    end
end
