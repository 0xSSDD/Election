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

    //Store accounts that have voted
    mapping(address=> bool) public voters;

    //Store a candidate's count
    uint public candidatesCount=0;

    //voted event
    event votedEvent(
        uint indexed _candidateId
    );

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        //require that they havent voted before
        require(!voters[msg.sender]);

        //require a valid candidate
        require(_candidateId>0&& _candidateId<= candidatesCount);

        //update candidate vote count
        candidates[_candidateId].voteCount++;
        
        //record that voter has voted
        voters[msg.sender] = true;

        //trigger voted event
        emit  votedEvent(_candidateId);
    }



    constructor () public{
        addCandidate("Candidate-1");
        addCandidate("Candidate-2");
    }
}
