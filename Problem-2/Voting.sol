pragma solidity ^0.8.0;

// This contract implements a simple voting system.
contract Voting {
    // The owner of the contract
    address public owner;

    // An array to store the list of candidates
    string[] public candidates;

    // A mapping to track if an address has voted
    mapping(address => bool) public voters;

    // A mapping to store the vote count for each candidate
    mapping(uint256 => uint256) public votesReceived;

    // An event to log each vote
    event Voted(address indexed voter, uint256 candidateIndex);

    // A modifier to restrict certain functions to the owner
    modifier onlyOwner {
        require(msg.sender == owner, "Only the owner can perform this operation");
        _;
    }

    // The constructor initializes the owner and the list of candidates
    constructor(string[] memory _candidates) {
        owner = msg.sender;
        candidates = _candidates;
    }

    // Function to add a candidate to the list
    function addCandidate(string memory candidate) public onlyOwner {
        candidates.push(candidate);
    }

    // Function to remove a candidate from the list
    function removeCandidate(uint256 candidateIndex) public onlyOwner {
        require(candidateIndex < candidates.length, "Invalid candidate");
        candidates[candidateIndex] = candidates[candidates.length - 1];
        candidates.pop();
    }

    // Function to cast a vote
    function vote(uint256 candidateIndex) public {
        require(!voters[msg.sender], "You have already voted");
        require(candidateIndex < candidates.length, "Invalid candidate");

        voters[msg.sender] = true;
        votesReceived[candidateIndex]++;

        emit Voted(msg.sender, candidateIndex);
    }

    // Function to get the total votes a candidate has received
    function getTotalVotes(uint256 candidateIndex) public view returns (uint256) {
        require(candidateIndex < candidates.length, "Invalid candidate");
        return votesReceived[candidateIndex];
    }

    // Function to check if an address has voted
    function hasVoted(address voter) public view returns (bool) {
        return voters[voter];
    }
}
