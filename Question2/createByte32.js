const { ethers } = require("ethers");

const createBytes32String = (arg) => {
  const name = arg[0];

  const bytes = ethers.utils.formatBytes32String(name);
  console.log("Bytes: ", bytes);
};

createBytes32String(process.argv.slice(2));
