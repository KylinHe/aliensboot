set basepath=%~dp0

set GO111MODULE=on
set GOPROXY=https://goproxy.io

cd ../aliensboot-toolkit/cli
go build -v -o %basepath%/aliensboot.exe
pause