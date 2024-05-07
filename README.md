# ERC20 Goerli to Mumbai Bridge Using fxPortal
This project demonstrates how to use the fxPortal contracts to transfer ERC20 tokens from Goerli to Mumbai.

### Steps for Bridging

Here are the steps for bridging ERC20 tokens from Goerli to Mumbai using fxPortal:

Begin by running 
```
npm i
```

 to install the necessary dependencies.

In the .env.examples file, input your private key and then rename the file to .env.

Deploy the ERC20 contract by running 
```
npx hardhat run scripts/deploy.js --network goerli.
```

After deployment, copy the address of the newly deployed contract and paste it into the tokenAddress variable in other scripts.

Ensure that your public key is filled in correctly.

Mint tokens to your wallet by running 

```
npx hardhat run scripts/mint.js --network goerli.
```

Approve and deposit your tokens to Polygon by running npx hardhat run scripts/approveDeposit.js --network goerli.

Allow 20-30 minutes for the tokens to appear in your Polygon account.

Verify your account's token balance using polyscan.com. Once the tokens are visible, click on the transaction to obtain the Polygon contract address.

Use this contract address in your getBalance script's tokenAddress.

Finally, run npx hardhat run scripts/getBalance.js --network mumbai to view your new Polygon balance on the Mumbai network.


# Author

Ashwath raju

ashwathraju85@gmail.com


