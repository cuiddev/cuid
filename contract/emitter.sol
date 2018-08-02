pragma solidity ^0.4.24;

contract CUIDEmitter {
    
address public owner;
event logcuid(bytes calldata);

  constructor() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function emitCUID(bytes calldata) public onlyOwner {
   emit logcuid(calldata);
  }
  
}
