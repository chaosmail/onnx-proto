# Download the Onnx Proto definition from github.com/onnx/onnx and
# compile it into a JavaScript module and a Typescript definition.
set -e

ONNX_VERSION=${1:-main}

DIST_DIR=dist
ONNX_DIR=onnx
CWD=$(pwd)

echo "Importing ONNX ${ONNX_VERSION}.."

git submodule update --init \
&& cd $ONNX_DIR \
&& git fetch \
&& git checkout $ONNX_VERSION

cd $CWD

# Create the directorpies
mkdir -p $DIST_DIR

# Create a JavaScript module
pbjs -t static-module -w commonjs -o $DIST_DIR/onnx.js $ONNX_DIR/onnx/onnx.proto3
pbts -o $DIST_DIR/onnx.d.ts $DIST_DIR/onnx.js
