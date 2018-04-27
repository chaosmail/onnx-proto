# Download the Onnx Proto definition from github.com/onnx/onnx and
# compile it into a JavaScript module and a Typescript definition.

set -e

DIST_DIR=dist
PROTO_DIR=proto
PROTO_URL=http://cdn.rawgit.com/onnx/onnx/master/onnx/onnx.proto3

# Create the directorpies
mkdir -p $PROTO_DIR
mkdir -p $DIST_DIR

# Download the proto definition
wget -qO $PROTO_DIR/onnx.proto $PROTO_URL

# Create a JavaScript module
node_modules/.bin/pbjs -t static-module -w commonjs -o $DIST_DIR/onnx.js $PROTO_DIR/onnx.proto
node_modules/.bin/pbts -o $DIST_DIR/onnx.d.ts $DIST_DIR/onnx.js