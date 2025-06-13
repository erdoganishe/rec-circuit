use dep::std::verify_proof;

fn main(
	verification_key: [Field; 114],
	proof: [Field; 93 + 16],
	public_inputs: [Field; 16],
	key_hash: Field,
	) 
    {
	verify_proof(verification_key, proof, public_inputs, key_hash);
}