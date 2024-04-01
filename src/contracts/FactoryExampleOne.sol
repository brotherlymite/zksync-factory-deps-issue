// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {TransparentProxyFactory} from 'solidity-utils/src/contracts/transparent-proxy/TransparentProxyFactory.sol';

contract FactoryExampleOne {
  constructor() {
    TransparentProxyFactory factory = new TransparentProxyFactory();

    factory.createProxyAdmin(address(1234));
  }
}
