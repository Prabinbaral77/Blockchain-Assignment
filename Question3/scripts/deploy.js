const hre = require("hardhat");

async function main() {
  const ERC = await hre.ethers.getContractFactory("Token");
  const erc = await ERC.deploy();
  await erc.deployed();
  console.log("PC coin deployed to:", erc.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
