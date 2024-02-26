# Connect to raspberry pi.
# $1: user
# $2: ip
# $3: port
pi_code() {
  local RPI_CODE_DEFAULT_ADDRESS="6.tcp.ngrok.io"
  local RPI_CODE_DEFAULT_PORT="16911"
  local RPI_CODE_DEFAULT_USER="cnickel"
  ssh -p ${3:-$RPI_CODE_DEFAULT_PORT} ${1:-$RPI_CODE_DEFAULT_USER}@${2:-$RPI_CODE_DEFAULT_ADDRESS}
}

