pragma solidity ^0.4.21;

contract Sample{

    uint public value;//pure constant view

    event setEvent(uint);


    function Sample(uint v) public payable{
        value = v;
    }

    function set(uint v) public{
        value = v;
        emit setEvent(v);

    }

    function get() public view returns(uint){
        return value;
    }

    function () payable public {

    }

}