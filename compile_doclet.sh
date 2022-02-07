#!/bin/bash

# compile doclet
pushd third_party/docfx-doclet-143274
mvn clean && mvn compile && mvn package -Dmaven.test.skip
popd

# copy compiled jar and rename it
cp third_party/docfx-doclet-143274/target/docfx-doclet-1.0-SNAPSHOT-jar-with-dependencies.jar java-docfx-doclet-1.5.0-jar-with-dependencies.jar