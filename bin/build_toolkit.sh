basepath=$(cd `dirname $0`; pwd)
cd ../aliensboot-toolkit/cli
go build -mod readonly -v -o $basepath/aliensboot