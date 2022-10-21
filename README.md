# eatz
you already know

![Hardhat-based smartcontract, version 0.1](/images/2022-08-01-101624_649x231_scrot.png)

## Picking an environment and erc standard basis

Using a git repo (obviously) to track a dev branch:

	* hardhat

Newish ERC standards of interest:

	* 681	URL Format for Transaction Requests
	* 3156	Flash Loans
	* 4907	Rental NFT, ERC-721 User And Expires Extension
	
Core ERC:

	* 158	State clearing
	* 2930	Optional Access Lists


See INSTALL.md and CONFIGURE.md for instructions on running hardhat.


All this material (and so much more) is available at https://eips.ethereum.org/all


# Directories:

contracts -- 	the latest smart contracts, not compiled

test -- 		the latest tests

script --		deploy (and other) scripts

tasks -- 		contains other helper scripts

hh_instance --	this is where your local hardhat environment lives. 	
					Don't put it in the main repo folder!

# Dev notes:

Clone the repo and set everything up.  You can copy the main scripts, contracts, and tests onto the folders in your hh_instance directory.  

hh_instance is not being tracked.

MAKE A NEW BRANCH FOR YOUR FEATURE.  For the love of dogs, give it a reasonable name.

When you are finished tinkering, push to your branch.