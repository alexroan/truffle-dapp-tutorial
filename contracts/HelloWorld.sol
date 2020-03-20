pragma solidity >=0.5.0;

contract HelloWorld {
    string private greeting;

    constructor() public {
        greeting = "Hello World";
    }

    function getGreeting() public view returns(string memory){
        return greeting;
    }
}