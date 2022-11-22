BLOCK_SIGNER_PRIVATE_KEY="45a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d8"


./node_modules/.bin/ethereumjs \
    --gethGenesis='./geth-genesis.json' \
    --port=30305 \
    --loglevel=debug \
    --rpc --rpcport=8544 \
    --maxPerRequest=1 \
    --rpcEngine=true \
    --rpcEngineAuth=false \
    --mine \
    --unlock='./minerDeets.txt'
