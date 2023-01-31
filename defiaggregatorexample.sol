pragma solidity ^0.8.0;

contract DefiAggregator {
    // Define the addresses of the DeFi protocols
    address[] public protocols;

    // Define the constructor function
    constructor() public {
        // Set the initial list of DeFi protocols
        protocols.push(0x1234567890abcdef);
        protocols.push(0x0987654321fedcba);
    }

    // Define a function for adding new DeFi protocols
    function addProtocol(address newProtocol) public {
        // Check if the new protocol is not already in the list
        for (uint256 i = 0; i < protocols.length; i++) {
            if (protocols[i] == newProtocol) {
                return;
            }
        }

        // Add the new protocol to the list
        protocols.push(newProtocol);
    }

    // Define a function for removing DeFi protocols
    function removeProtocol(address removeProtocol) public {
        // Check if the protocol to be removed is in the list
        for (uint256 i = 0; i < protocols.length; i++) {
            if (protocols[i] == removeProtocol) {
                // Remove the protocol from the list
                protocols.length--;
                protocols[i] = protocols[protocols.length];
                protocols[protocols.length] = address(0);
                return;
            }
        }
    }

    // Define a function for retrieving information about DeFi protocols
    function getProtocolInfo(address protocol) public view returns (bool isProtocol) {
        // Check if the requested protocol is in the list
        for (uint256 i = 0; i < protocols.length; i++) {
            if (protocols[i] == protocol) {
                return true;
            }
        }
        return false;
    }
}
