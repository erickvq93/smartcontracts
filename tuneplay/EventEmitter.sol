// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EventEmitter {
    event BidPlaced(
        address indexed projectAddress,
        address indexed bidderAddress,
        uint bidValue
    );
    
    event BidRemoved(
        address indexed projectAddress,
        address indexed bidderAddress,
        uint bidValue,
        bool refunded
    );
    
    event HighestBidUpdated(
        address indexed projectAddress,
        uint bidValue,
        address bidderAddress
    );

    function emitBidPlaced(
        address projectAddress,
        address bidderAddress,
        uint bidValue
    ) external {
        emit BidPlaced(projectAddress, bidderAddress, bidValue);
    }
    
    function emitBidRemoved(
        address projectAddress,
        address bidderAddress,
        uint bidValue,
        bool refunded
    ) external {
        emit BidRemoved(projectAddress, bidderAddress, bidValue, refunded);
    }
    
    function emitHighestBidUpdated(
        address projectAddress,
        uint bidValue,
        address bidderAddress
    ) external {
        emit HighestBidUpdated(projectAddress, bidValue, bidderAddress);
    }
}
