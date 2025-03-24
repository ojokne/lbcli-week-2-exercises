# Created a SegWit address.
# Add funds to the address.
# Return only the Address

segwitaddress=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
blocks=$(bitcoin-cli -regtest generatetoaddress 101 $segwitaddress)
echo $segwitaddress
