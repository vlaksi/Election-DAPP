pragma solidity ^0.5.16;	// this is version of solidity we are using

contract Election{

    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // key is uint and value is our candidate
    // mapping is like hashtable


    // Store Candidates Count
    uint public candidatesCount;
    // scope of this state variable is in contracts Election

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
    	// because _name is local variable, we use underscore _before_var_name
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
    /*
		When we created struct model Candidate,
		we have 'built-in constructor', so when we want
		to make one instance of that model
		we go in order for each variable in model.
		Candidate(firstVariable, secondVariable, and so on...) 
    */
}