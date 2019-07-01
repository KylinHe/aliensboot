basepath=$(cd `dirname $0`; pwd)
cd ../aliensboot-toolkit/cli

# Enable the go modules feature
export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.io

go build -v -o $basepath/aliensboot