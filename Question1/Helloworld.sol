// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    uint256 number; //number which store 256 bitlong integer

    //function to store the numeric argument value to number
    function storeNumber(uint256 num) public {
        number = num;
    }

    //function to retrive the number that has been store by the function storeNumber
    function retrieveNumber() public view returns (uint256) {
        return number;
    }
}
