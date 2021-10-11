pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";
import "../Resources/ICryptoRight.sol";

contract CryptoRight is ICryptoRight {

    using Counters for Counters.Counter;

    Counters.Counter copyright_ids;

    // @TODO: Implement the Work struct
    struct Work {
        address owner;
        string uri;
    }

    // @TODO: Implement the copyrights mapping
    mapping (uint => Work) copyrights;

    // @TODO: Implement the Copyright Event

    // @TODO: Implement the OpenSource Event

    // @TODO: Implement the Transfer Event
    
    function copyrights(uint copyright_id) public returns(IWork memory) {
        return copyrights[copyright_id];
    }

    modifier onlyCopyrightOwner(uint copyright_id) {
        // @TODO: Check if copyright owner is equal to msg.sender
    }

    function copyrightWork(string memory reference_uri) public {
        // @TODO: Implement the copyrightWork function
        id = copyright_ids.current();
        copyrights[id] = Work(owner, reference_uri);
    }

    function openSourceWork(string memory reference_uri) public {
        // @TODO: Implement the copyrightWork function
        id = copyright_ids.current();
        copyrights[id] = Work(owner, reference_uri);
    }

    function transferCopyrightOwnership(uint copyright_id, address new_owner) public onlyCopyrightOwner(copyright_id) {
        // @TODO: Implement the copyrightWork function
        oldid = 
    }

    function renounceCopyrightOwnership(uint copyright_id) public onlyCopyrightOwner(copyright_id) {
        // @TODO: Implement the copyrightWork function
    }

}
