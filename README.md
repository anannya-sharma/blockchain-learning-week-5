# blockchain-learning-week-5

## Smart Contract Exercises

This document provides an overview of the exercises we've discussed, which involve creating and testing Ethereum smart contracts. The exercises cover a range of topics, including identifying and exploiting contract vulnerabilities, creating a voting system, and interacting with contracts using the Ethers.js library.

## Exercise 1: Identifying and Exploiting Contract Vulnerabilities

The first exercise involved identifying vulnerabilities in a given contract and writing an exploit contract to take advantage of these vulnerabilities. The contract in question allowed anyone to deposit and withdraw funds from any account, which is a significant security issue.

We wrote an exploit contract that could withdraw funds from any account in the vulnerable contract. We also provided a corrected version of the contract that only allows the account owner to deposit or withdraw funds.

## Exercise 2: Creating a Voting System

The second exercise involved creating a smart contract for a simple voting system. The contract allows the contract owner to add and remove candidates. Any address can vote for a candidate, but each address can only vote once. The contract keeps track of the total votes each candidate has received and provides a function to check if an address has already voted.

We also discussed potential improvements and additional features for the contract, such as handling Ether, declaring a winner, and setting a deadline for voting.

## Interacting with Contracts Using Ethers.js

We discussed how to use the Ethers.js library to interact with deployed contracts. This includes reading state variables, calling functions, and listening for events. We provided examples of how to write scripts for deployment and interaction.

## Testing Contracts

We discussed the importance of testing contracts and provided examples of how to write tests using Hardhat, Waffle, and Ethers.js. The tests cover normal operation as well as potential error conditions.

## Security Considerations

Throughout the exercises, we emphasized the importance of security when dealing with smart contracts. Bugs in contracts can lead to irreversible loss of funds, so contracts should be thoroughly tested and audited before deployment.
