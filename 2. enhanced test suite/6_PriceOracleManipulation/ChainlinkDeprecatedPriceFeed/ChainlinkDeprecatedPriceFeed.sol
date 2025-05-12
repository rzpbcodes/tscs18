// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


// Use of deprecated Chainlink function `latestAnswer`
// https://solodit.cyfrin.io/issues/m-05-use-of-deprecated-chainlink-function-latestanswer-code4rena-gro-protocol-gro-protocol-git

interface AggregatorV3Interface {
    function latestAnswer() external view returns (int256);
}

contract ChainlinkDeprecatedPriceFeed {
    AggregatorV3Interface internal priceFeed;

    constructor(address _priceFeedAddress) {
        priceFeed = AggregatorV3Interface(_priceFeedAddress);
    }

    function getLatestPrice() public view returns (int256) {
        return priceFeed.latestAnswer();
    }
}
