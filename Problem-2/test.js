/**
 * This tests the Voting smart contract.
 */
describe("Voting", function () {
  /**
   * This tests that the candidates are set correctly.
   */
  it("Should return the right candidates and votes", async function () {
    const Voting = await ethers.getContractFactory("Voting");
    const voting = await Voting.deploy(["Alice", "Bob"]);

    await voting.deployed();

    /**
     * This tests that the first candidate is set correctly.
     */
    expect(await voting.candidates(0)).to.equal("Alice");
    /**
     * This tests that the second candidate is set correctly.
     */
    expect(await voting.candidates(1)).to.equal("Bob");
    /**
     * This tests that the total votes for the first candidate are 0.
     */
    expect(await voting.getTotalVotes(0)).to.equal(0);
    /**
     * This tests that the total votes for the second candidate are 0.
     */
    expect(await voting.getTotalVotes(1)).to.equal(0);

    /**
     * This tests that a vote for the first candidate is recorded correctly.
     */
    await voting.vote(0);
    /**
     * This tests that the total votes for the first candidate are 1.
     */
    expect(await voting.getTotalVotes(0)).to.equal(1);
    /**
     * This tests that the user has voted.
     */
    expect(
      await voting.hasVoted(await ethers.provider.getSigner().getAddress())
    ).to.equal(true);
  });
});
