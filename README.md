
# [GANACHE](https://www.trufflesuite.com/ganache)
**Ganache** is a personal blockchain for rapid Ethereum and Corda distributed application development. You can use Ganache across the entire `development cycle`; enabling you to develop, deploy, and test your dApps in a safe and deterministic environment.

# [TRUFFLE](https://www.trufflesuite.com/docs/truffle/overview)
Using the `Ethereum Virtual Machine` (EVM), **Truffle** is a development environment, testing framework and asset pipeline for `blockchain` Technology.

## Setting up the `Migrations`
Ensure naming the files with correct run order such as:
* `1_initial_migration.js`
* `2_deploy_contra

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
