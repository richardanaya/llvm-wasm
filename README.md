# llvm-wasm
The most minimal web assembly LLVM project

```llvm
define i32 @main() {
  ret i32 42
}
```
```console
llc-7 -mtriple=wasm32-unknown-unknown -O3 -filetype=obj main.ll -o main.o
wasm-ld-7 main.o -o main.wasm --no-entry -allow-undefined
```
```javascript
fetch("main.wasm")
.then(response => response.arrayBuffer())
.then(bytes => WebAssembly.instantiate(bytes, {}))
.then(results => {
  window.alert(results.instance.exports.main());
});
```
