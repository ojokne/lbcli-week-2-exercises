# Created a SegWit address.
# Add funds to the address.
# Return only the Address

segwitaddress=$(bitcoin-cli -regtest getnewaddress "p2sh-segwit")

bitcoin-cli -regtest generatetoaddress 101 $segwitaddress | jq -r ".address"
