# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
update:; forge update

# Build & test
build  :; forge build --sizes
test   :; forge test -vvv

# Utilities
download :; cast etherscan-source --chain ${chain} -d src/etherscan/${chain}_${address} ${address}
git-diff :
	@mkdir -p diffs
	@npx prettier ${before} ${after} --write
	@printf '%s\n%s\n%s\n' "\`\`\`diff" "$$(git diff --no-index --diff-algorithm=patience --ignore-space-at-eol ${before} ${after})" "\`\`\`" > diffs/${out}.md

deploy-ex-one:
	zkforge script scripts/FactoryExampleOne.s.sol:DeployFactoryExampleOne --rpc-url zksync-sepolia --private-key ${PRIVATE_KEY} --chain 300 --broadcast

deploy-ex-two:
	zkforge script scripts/FactoryExampleTwo.s.sol:DeployFactoryExampleTwo --rpc-url zksync-sepolia --private-key ${PRIVATE_KEY} --chain 300 --broadcast
