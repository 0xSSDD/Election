# Election
 An Ethereum fullstack blockchain dApp that allows us to vote between two candidates.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
The motivation behind this project was to understand how Ethereum smart contracts work using the programming language Solidity.

## Technologies
* Solidity- The programming language for the ethereum blockchain - version 0.5.16
* Truffle- A development environment, testing framework and asset pipeline for Ethereum - version 5.1.36
* Ganache -A personal Ethereum blockchain which you can use to run tests, execute commands, and inspect state while controlling how the chain operates.- version 2.4.0
* HTML,CSS,Javascript and testing frameworks such as Chai and Mocha.
## Setup
#### Step 1. Clone the project
#### Step 2. Install dependencies
```
$ cd election
$ npm install
```
#### Step 3. Start Ganache
Open the Ganache GUI client that you downloaded and installed. This will start your local blockchain instance.


#### Step 4. Compile & Deploy Election Smart Contract
`$ truffle migrate --reset`
N.B!  migrate the election smart contract each time your restart ganache.

#### Step 5. Configure Metamask
See free video tutorial for full explanation of these steps:
- Unlock Metamask
- Connect metamask to your local Etherum blockchain provided by Ganache.
- Import an account provided by ganache.

#### Step 6. Run the Front End Application
`$ npm run dev` or
Visit this URL in your browser: http://localhost:3000


## Inspiration
Project inspired by Gregory from Dapp university.

## Contact
Feel free to reach out to me via [linkedin.](https://www.linkedin.com/in/dutta-arpan/) 
