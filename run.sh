cd circuit

nargo execute 

bb prove -b target/circuit.json -w target/circuit.gz -o target/proof

bb write_vk -b target/circuit.json

bb verify -p target/proof