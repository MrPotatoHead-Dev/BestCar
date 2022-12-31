//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Name_Best_Car {
    // More specifically 1985 Suzuki Samurai
    string private BestCar = "Suzuki Samurai";

    function byteView(string memory _random) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_random));
    }

    function guess(string memory _BestCar) public view returns (bool) {
        // Compare their byte type
        return
            keccak256(abi.encodePacked(_BestCar)) ==
            keccak256(abi.encodePacked(BestCar));
    }
}
