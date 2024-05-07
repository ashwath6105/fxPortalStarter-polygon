// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Lamborghini is ERC721A{

    address public owner;

    uint256 public max_assets = 5;

    string baseUrl = "https://gateway.pinata.cloud/ipfs/QmSEMWZQC9EJ5E73BWTSN5BZJzM9kii5hyYCmMUYR7Ai15";

    
    string public prompt =
        "lamborghini aventador cruising through the mountains in a foggy and misty environment";
    
    constructor() ERC721A("Lambo", "CAR") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function mint(uint256 quantity) external payable onlyOwner{
        if(totalSupply() + quantity > max_assets){
         revert ("5 is maximum that you can mint");
        } 
        _mint(msg.sender, quantity);
    }


    function _baseURI() internal view override returns (string memory){
        return baseUrl;
    }

    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}
