/**
 * This function demonstrates how to interact with a smart contract using Hardhat and ethers.js.
 *
 * 1. We get the contract factory and attach to the deployed contract
 * 2. We query the contract for the list of candidates and their total votes
 * 3. We vote for the first candidate
 * 4. We query the contract again to see the updated vote count
 */
async function main() {
  const Voting = await ethers.getContractFactory("Voting");
  const voting = Voting.attach("contract-address");

  /**
   * Query the contract for the list of candidates and their total votes
   */
  console.log(
    "Candidates:",
    await voting.candidates(0),
    await voting.candidates(1)
  );
  console.log("Total votes for Alice:", await voting.getTotalVotes(0));
  console.log("Total votes for Bob:", await voting.getTotalVotes(1));

  /**
   * Vote for the first candidate
   */
  await voting.vote(0);
  console.log("Voted for Alice");
  console.log("Total votes for Alice:", await voting.getTotalVotes(0));
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
