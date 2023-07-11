[![CI](https://github.com/chaosmail/onnx-proto/actions/workflows/main.yaml/badge.svg)](https://github.com/chaosmail/onnx-proto/actions/workflows/main.yaml)

# Onnx Proto

Compiled Onnx Protobuf definition for JavaScript from [github.com/onnx/onnx/blob/master/onnx/onnx.proto3](https://github.com/onnx/onnx/blob/master/onnx/onnx.proto3).

## Include Onnx Definition in Typescript

First, add `onnx-proto` to your project.

```sh
npm install onnx-proto
```

Now, you can import the Onnx definition from the `onnx-proto` namespace.

```ts
import {onnx} from 'onnx-proto';
```

## Build

To update the definition, you have to run the following commands.

```sh
npm install
npm run build
```

New versions are automatically released to npm from the master branch.

## Changelog

* 9.0.0
  * Upgrade protobufjs to version v7.2.4
  * Update to latest Onnx definition (v1.14.0) IR_VERSION `9`
* 8.0.0
  * Replace Travis CI with Github CI
  * Auto-publish master branch to NPM
  * Add simple tests to verify package before publishing
  * Update to latest Onnx definition (v1.10.2) IR_VERSION `8`
* 4.0.0
  * Add Travis CI/CD
  * Update to latest Onnx definition
* 3.1.1
  * Remove unused files
* 3.1.0
  * Initial release of Onnx IR_VERSION 3

## License

The software is provided under MIT license.

Onnx License: https://github.com/onnx/onnx/blob/master/LICENSE
