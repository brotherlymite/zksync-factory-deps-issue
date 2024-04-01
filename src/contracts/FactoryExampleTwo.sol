// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {TransparentProxyFactory} from 'solidity-utils/src/contracts/transparent-proxy/TransparentProxyFactory.sol';

contract FactoryExampleTwo {
  constructor() {
    TransparentProxyFactory(address(999)).createProxyAdmin(address(1234));
  }
}
