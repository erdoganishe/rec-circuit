```
% bb --version 
0.66.0                                                                                                                                                                       
% nargo --version
nargo version = 1.0.0-beta.1
noirc version = 1.0.0-beta.1+03b58fa2dfcc8acc8cf5198b1b23b55676fbdb02
(git version hash: 03b58fa2dfcc8acc8cf5198b1b23b55676fbdb02, is dirty: false)
```

Steps to reproduce:
- `yarn`
- `bash run.sh`
- `node noirjs.js`

Result of bash file is successfully generated proof; result of execution of recursive noir proof in noirjs is failire. It fails only for recursive circuits, for non-recursive circuits works fine.

Error is:
```
node:internal/modules/run_main:128
    triggerUncaughtException(
    ^

Error [RuntimeError]: unreachable
    at wasm://wasm/02f4c1d6:wasm-function[18139]:0xb47d16
    at wasm://wasm/02f4c1d6:wasm-function[1187]:0x645d2
    at wasm://wasm/02f4c1d6:wasm-function[1190]:0x64756
    at wasm://wasm/02f4c1d6:wasm-function[9796]:0x4c34a0
    at wasm://wasm/02f4c1d6:wasm-function[9795]:0x4c3289
    at wasm://wasm/02f4c1d6:wasm-function[9799]:0x4c367a
    at wasm://wasm/02f4c1d6:wasm-function[9803]:0x4c39be
    at wasm://wasm/02f4c1d6:wasm-function[9680]:0x4b9df6
    at wasm://wasm/02f4c1d6:wasm-function[8942]:0x3a13d6
    at wasm://wasm/02f4c1d6:wasm-function[9049]:0x3a47e5
```
