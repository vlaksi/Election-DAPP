pragma solidity ^0.5.16;	// this is version of solidity we are using

contract Election{
	// Store candidate
    // Read candidate
    string public candidate;
 	// candidate is 'state variable' and it's something that's
    // going to e accessible inside of our contact and is going
    // to represent data that belongs to our entire contact

    // in solidity we get geter when we create state variable
    // so, no need for creating one


    // Constructor, he is going to get run whenever we deploy our
    // contract to the blockchain, and because of that we set public
    constructor() public {
    	candidate = "Candidate 1";
    }

}