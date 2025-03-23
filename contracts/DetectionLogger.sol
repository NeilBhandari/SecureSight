// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract DetectionLogger {
    struct DetectionEvent {
        string officerId;
        string eventType;
        string details;
        uint256 timestamp;
    }

    DetectionEvent[] private _events;

    event EventLogged(string officerId, string eventType, string details, uint256 timestamp);

    function logEvent(
        string memory officerId,
        string memory eventType,
        string memory details
    ) public {
        DetectionEvent memory newEvent = DetectionEvent({
            officerId: officerId,
            eventType: eventType,
            details: details,
            timestamp: block.timestamp
        });

        _events.push(newEvent);
        emit EventLogged(officerId, eventType, details, block.timestamp);
    }

    function getEventsCount() public view returns (uint256) {
        return _events.length;
    }

    function getEvent(uint256 index)
    public
    view
    returns (
        string memory officerId,
        string memory eventType,
        string memory details,
        uint256 timestamp
    )
    {
        DetectionEvent storage e = _events[index];
        return (e.officerId, e.eventType, e.details, e.timestamp);
    }
}
