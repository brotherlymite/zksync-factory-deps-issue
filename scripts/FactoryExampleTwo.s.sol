// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from 'forge-std/Script.sol';
import {FactoryExampleTwo} from '../src/contracts/FactoryExampleTwo.sol';
import {TransparentProxyFactory} from 'solidity-utils/src/contracts/transparent-proxy/TransparentProxyFactory.sol';

contract DeployFactoryExampleTwo is Script {
  function run() external {
    vm.startBroadcast();

    // address proxyFactory = address(new TransparentProxyFactory());
    new FactoryExampleTwo(0xe3B390B7b597b17517197F52C16429179A16A6FE);

    vm.stopBroadcast();
  }
}
