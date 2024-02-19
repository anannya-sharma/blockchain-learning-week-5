/**
 * @task deploy
 * @description Deploys the contract
 */
task("deploy", "Deploys the contract").setAction(async function () {
  const Voting = await ethers.getContractFactory("Voting");
  const voting = await Voting.deploy(["Alice", "Bob"]);
  console.log("Contract deployed to:", voting.address);
});
