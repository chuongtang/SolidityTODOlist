
# [GANACHE](https://www.trufflesuite.com/ganache)
**Ganache** is a personal blockchain for rapid Ethereum and Corda distributed application development. You can use Ganache across the entire `development cycle`; enabling you to develop, deploy, and test your dApps in a safe and deterministic environment.

# [TRUFFLE](https://www.trufflesuite.com/docs/truffle/overview)
Using the `Ethereum Virtual Machine` (EVM), **Truffle** is a development environment, testing framework and asset pipeline for `blockchain` Technology.

## Setting up the `Migrations`
Ensure naming the files with correct run order such as:
* `1_initial_migration.js`
* `2_deploy_contract.js`

## Artifacts:
**Artifacts** are information about our contract such as its deployed `address` and `Application Binary Interface` (ABI). The **ABI** is a JavaScript object defining how to interact with the contract including its variables, functions and their parameters.
Truffle artifacts are stored as JSON files in a project’s `build/contracts/` directory.
Artifact files follow a formally-specified JSON-Schema

# CONTRACT ABSTRACTIONS
Truffle provides contract abstractions for interacting with your contracts

### From the `artifacts` object
Outside of the console this is an object available in migration files, tests, and exec scripts.
`const MyContract = artifacts.require("MyContract");`

### From the Truffle Console
`truffle(development)> const myContract = await MyContract.deployed();`


# SOLIDITY
## Structs
`Structs` are a way to define new custom types in `Solidity`. They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract.

## Mapping
Mapping in Solidity acts like a hash table or dictionary in any other language. These are used to store the data in the form of `key-value` pairs, a key can be any of the built-in data types but reference types are not allowed while the value can be of any type. Mappings are mostly used to associate the unique Ethereum address with the associated value type. **Mappings are not iterable.**
Syntax: 
```
mapping(keyType => valueType) <access specifier> <name>;
```
`keyType` can be value types such as `uint`, `address` or `bytes`.
`valueType` can be any type including another mapping or an array.

## Constructor
A constructor in Solidity is a special function that is used to initialize `state variables` in a contract. The constructor is called when a contract is first created and can be used to set `initial values` and *does not run again*.

* Constructors are an optional function
* In case, no constructor is defined, a default constructor is present in the contract.

  ```
  pragma solidity ^0.5.0;

  contract Test {
    constructor() public {}
  }
  ```
* A constructor can be either public or internal.


# [lite-server](https://github.com/johnpapa/lite-server)
Lightweight *development only* **node server** that serves ***Single Page Apps*** `(SPAs)`, opens it in the browser, refreshes when `html` or `javascript` change, injects `CSS` changes using `sockets`, and has a `fallback page` when a route is not found.

For this Dapp only, run `npm run server` to start the **lite-server** 
## bs-config.json
`bs` is browser sync and it serves the static content, detects changes, refreshes the browser, and offers many customizations

# [web3.js](https://github.com/ChainSafe/web3.js)
It is the Ethereum JavaScript API which connects to the [Generic JSON-RPC spec](https://github.com/ethereum/execution-apis). `web3.js` is a collection of libraries that allow you to interact with a local or remote ethereum node using HTTP, IPC or WebSocket.

## Syntax to load Eth account and set as default:
```js
  let accounts = await web3.eth.getAccounts();
    web3.eth.defaultAccount = accounts[0]

    // Set the current blockchain account
    App.account = accounts[0]
```