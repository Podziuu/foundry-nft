-include .env

.PHONY: all test clean deploy fund help install snapshot format anvil zktest

deploy:
	@forge script script/DeployBasicNft.s.sol:DeployBasicNft --rpc-url $(SEPOLIA_RPC_URL) --account metamask --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv 

mint:
	@forge script script/Interactions.s.sol:MintBasicNft --rpc-url $(SEPOLIA_RPC_URL) --account metamask --broadcast -vvvv