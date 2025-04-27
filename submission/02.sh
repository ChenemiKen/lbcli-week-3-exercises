# Create a native segwit address and get the public key from the address.
address=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress -addresstype bech32)
bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $address | jq -r '.pubkey'