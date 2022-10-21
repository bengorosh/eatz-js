## Read the docs.

hardhat.config.js

    https://hardhat.org/hardhat-runner/docs/config

hardhat nework

    https://hardhat.org/hardhat-network/docs/overview

networks.hardhat

    https://hardhat.org/hardhat-network/docs/reference#config

HD Wallet config

    https://hardhat.org/hardhat-runner/docs/config#hd-wallet-config



The default network is the (fake) local hardhat network. The default chain ID is 31337.

HD Wallets (Hierarchical Deterministic Wallets) defined in BIP-32/BIP-44 can derive many wallets from a single seed.  The initial seed will be used to make a wallet which can make wallets (which can make wallets).

Mocha is the testing framework that hardhat uses.  https://mochajs.org/

Solidity is the high-level language that hardhat uses to compile smart contracts.  https://docs.soliditylang.org/en/v0.8.15/

hardhat.config.js will run before any task, so you can use it to integrate with other tools, like importing 

```
@babel/register
```

## Sample config:

An empty config will run just fine.

Possible fields: defaultNetwork, networks, solidity, paths, and mocha.

