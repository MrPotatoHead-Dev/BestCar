//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Name_Best_Car {
    // More specifically 1985 Suzuki Samurai
    string private BestCar = "Suzuki Samurai";
    
    // A function that converts strings to bytes32
    function byteView(string memory _random) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_random));
    }
    // The function where an input is used to compare
    // with my answer
    function guess(string memory _BestCar) public view returns (bool) {
        // Compare their byte type
        return
            keccak256(abi.encodePacked(_BestCar)) ==
            keccak256(abi.encodePacked(BestCar));
    }
}
