// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from 'forge-std/Script.sol';
import {FactoryExampleOne} from '../src/contracts/FactoryExampleOne.sol';

contract DeployFactoryExampleOne is Script {
  function run() external {
    vm.startBroadcast();
    new FactoryExampleOne();
    vm.stopBroadcast();
  }
}
