#/bin/sh

cargo install b3sum bs58-cli

for f in ./*.wasm; do
	hash=`b3sum --raw "$f" | bs58`
	echo "$hash 	$f"
done

