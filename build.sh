#!/bin/bash
export JAVA_HOME=$JAVA_HOME_1_6

rm -rf output
mkdir output

mvn clean package -Dmaven.test.skip=true

cd target
unzip -o heisenberg-server-1.0.5.zip
cd heisenberg-server-1.0.5
tar czf heisenberg-server.tgz *
cd ../../

cp target/heisenberg-server-1.0.5/heisenberg-server.tgz output/
