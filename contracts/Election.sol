pragma solidity ^0.5.16;

contract Election{

    //Model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    //Store candidates
    //Fetch a candidate
    mapping(uint=> Candidate) public candidates;

    //Store a candidate's count
    uint public candidatesCount=0;

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }



    constructor () public{
        addCandidate("Candidate-1");
        addCandidate("Candidate-2");
    }
}
