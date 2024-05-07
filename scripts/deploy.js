const hre = require("hardhat");

async function main() {

  const lambo = await hre.ethers.deployContract("Lamborghini");

  await lambo.waitForDeployment();

  console.log(
    "Contract Address: ", lambo.target
  );
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
