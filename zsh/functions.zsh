
function isWinDir {
  case $PWD/ in
    /mnt/*) return $(true);;
    *) return $(false);;
  esac
}

function git {
  if isWinDir
  then
    git.exe "$@"
  else
    /usr/bin/git "$@"
  fi
}

kport() {
  local port="$1"
  if [[ -z "$port" ]]; then
    echo "Usage: killport <port_number>"
    return 1
  fi
  local pid=$(lsof -t -i:"$port")
  if [[ -n "$pid" ]]; then
    echo "Killing process(es) on port $port (PID: $pid)"
    kill -9 "$pid"
  else
    echo "No process found running on port $port"
  fi
}



