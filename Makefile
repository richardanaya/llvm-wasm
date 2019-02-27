build:
	llc-7 -mtriple=wasm32-unknown-unknown -O3 -filetype=obj main.ll -o main.o
	wasm-ld-7 main.o -o main.wasm --no-entry -allow-undefined

serve:
	http-server -p 8080
