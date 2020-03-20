pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {
    function testItGreets() public {
        // Get the deployed contract
        HelloWorld helloWorld = HelloWorld(DeployedAddresses.HelloWorld());

        // Call getGreeting function in deployed contract
        string memory greeting = helloWorld.getGreeting();

        // Assert that the function returns the correct greeting
        Assert.equal(greeting, "Hello World", "It should greet me with Hello World.");
    }
}