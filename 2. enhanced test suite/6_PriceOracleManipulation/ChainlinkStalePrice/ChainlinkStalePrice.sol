// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//  Chainlink's `latestRoundData` might return stale or incorrect results, check for all return values
// https://solodit.cyfrin.io/issues/m-04-chainlinks-latestrounddata-might-return-stale-or-incorrect-results-code4rena-predy-predy-git
interface AggregatorV3Interface {
    function latestRoundData() external view returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    );
}

contract ChainlinkStalePrice {
    AggregatorV3Interface internal priceFeed;

    constructor(address _priceFeedAddress) {
        priceFeed = AggregatorV3Interface(_priceFeedAddress);
    }

    function getLatestPrice() public view returns (int256) {
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price;
    }
}
