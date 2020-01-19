pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address[] public players;
    
    //constructor () public {
     //   manager=msg.sender;
    //}
    function Lottery() public {
        manager=msg.sender;
    }
    
    modifier onlyManagerCanCall() {
        require(msg.sender==manager);//only manager can pickWinner
        _;
    }
    
    function getManager() public view returns (address) {
        return manager;
    }
    //投注彩票
    function enter() public payable {
        require(msg.value==1 ether);//assure cost money 
        players.push(msg.sender);
    }

    function getAllPlayers() public view returns (address[]) {
        return players;
    }
    
    function getBalance() public view returns(uint) {
        return this.balance;
    }
    
    function getPlayersCount() public view returns(uint) {
        return players.length;
    }
    
    function random() private view returns(uint) {
        return uint(keccak256(block.difficulty,now,players));
    }
    
    function pickWinner() public onlyManagerCanCall returns(address) {
        
        uint index=random()%players.length;
        address winner=players[index];
        winner.transfer(this.balance);
        players = new address[](0);//clear players[]
        return winner;
    }
    
    function refund() public onlyManagerCanCall {
        //require(msg.sender==manager);
        for(uint i=0;i<players.length;i++) {
            players[i].transfer(1 ether);
        }
        players = new address[](0);//clear players[]
    }
}
