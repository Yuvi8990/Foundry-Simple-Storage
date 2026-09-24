// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {Script} from "forge-std/Script.sol";

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

// first we need to import some external code from (lib-forge-std) or a file from standard forge library to tell solidity that what we are writing is a deployment script.
// this libray import will also give deploySS access to all the predefined scripting tools and functions of the foundry framework.
// then as it will deploy our simplestorage, we also need to tell it what that is by importing that, also we used ' .. ' to go down the folder directory into src.
// every scripts 1st and foremost function will be a run function that we will use for deployment.

// vm.startBroadcast() is a special keyword in the forgestd library. vm is a special keyword that can only be used in foundry and it is related to something called cheatcodes that we will dicuss later.
// this vm and cheatcode stuff only works in foundry locally; i.e not valid in regular solidity or blockchain mainnet
// it kinda says everything after this line, inside this function, you should actually send to the rpc or local testnet.
// after we are done brodcasting we can say vm.stopBroadcast(). and everything inside these both will be the stuff we send to the rpc or our actual deployment.
// we do this because if we have some another defining boiler plate code that we dont wanna send or waste gas on, we can exclude it from the space between them

// new keyword creates a new contract in solidity.
