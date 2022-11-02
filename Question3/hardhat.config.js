require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    ropsten: {
      url: `https://eth-ropsten.alchemyapi.io/v2/${process.env.ALCHEMY_PRIVATE_KEY}`,
      accounts: [`${process.env.GOERLI_PRIVATE_KEY}`],
    },
  },
};
