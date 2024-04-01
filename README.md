# zkSync factory dependency issue example

Run: `zkforge zkb`

Notice that for `FactoryExampleOne.sol` and `FactoryExampleTwo.sol` the artifacts generated in `zkout/` do not contain all the factory dependencies which causes `script failed: revert: The code hash is not know` error during deployment
