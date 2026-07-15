function extract

    switch $argv[1]

        case '*.tar.gz'
            tar -xzf $argv[1]

        case '*.tar'
            tar -xf $argv[1]

        case '*.zip'
            unzip $argv[1]

        case '*.7z'
            7z x $argv[1]

        case '*'
            echo "Unknown archive format"

    end

end