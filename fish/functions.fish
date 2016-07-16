# thx to https://github.com/mduvall/config/

function killf
  if ps -ef | sed 1d | fzf -m | awk '{print $2}' > $TMPDIR/fzf.result
    kill -9 (cat $TMPDIR/fzf.result)
  end
end

function md --wraps mkdir -d "Create a directory and cd into it"
  command mkdir $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end


function sudo!!
    eval sudo $history[1]
end


# `shellswitch [bash|zsh|fish]`
function shellswitch
	chsh -s /usr/bin/$argv
end

function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_commandd $history[1]
    thefuck $fucked_up_commandd > $eval_script
    . $eval_script
    /bin/rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_commandd
    end
end



function server -d 'Start a HTTP server in the current dir, optionally specifying the port'
    if test $argv[1]
        set port $argv[1]
    else
        set port 8000
    end

    open "http://localhost:$port/" &
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
#     python -c "import SimpleHTTPServer
# map = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;
# map[\"\"] = \"text/plain\";
# for key, value in map.items():
#   map[key] = value + \";charset=UTF-8\";
#   SimpleHTTPServer.test()" $port
    statik --port "$port" .
end


function emptytrash -d 'Empty the Trash on all mounted volumes and the main HDD. then clear the useless sleepimage'
    sudo rm -rfv /Volumes/*/.Trashes
    sudo rm -v /private/var/vm/sleepimage
    rm -rfv ~/.Trash/*
    rm -rfv /Users/Simon/Library/Application\ Support/stremio/Cache
    rm -rfv /Users/Simon/Library/Application\ Support/stremio/stremio-cache
end