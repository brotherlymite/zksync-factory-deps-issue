// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {TransparentProxyFactory} from 'solidity-utils/src/contracts/transparent-proxy/TransparentProxyFactory.sol';

contract FactoryExampleTwo {
  constructor(address proxyFactory) {
    TransparentProxyFactory(proxyFactory).createProxyAdmin(address(1234));
  }
}
