# Voting Contract

This contract implements a simple voting system. It allows the contract owner to add and remove candidates. Any address can vote for a candidate, but each address can only vote once. The contract keeps track of the total votes each candidate has received. It also provides a function to check if an address has already voted.

## Assumptions and Conditions

- The contract owner is the address that deploys the contract.
- Each address can only vote once.
- The contract does not handle any financial transactions or tokens.
- The contract does not include any functionality for ending the voting or declaring a winner.

## Process

1. The contract is deployed with an initial list of candidates.
2. The contract owner can add or remove candidates by calling the `addCandidate` and `removeCandidate` functions.
3. Any address can vote for a candidate by calling the `vote` function with the index of the candidate.
4. The contract emits a `Voted` event each time a vote is cast.
5. Anyone can check the total votes for a candidate by calling the `getTotalVotes` function.
6. Anyone can check if an address has voted by calling the `hasVoted` function.
