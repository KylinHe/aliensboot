basepath=$(cd `dirname $0`; pwd)
cd ../aliensboot-toolkit/excel2all
mvn assembly:single
mv target/excel2all-1.0.0-jar-with-dependencies.jar ../../bin/datatool.jar