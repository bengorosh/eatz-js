## Run something.  Locally.  Using hardhat.

TO INSTALL:



Nuke node.js and npm.

(Be careful with this one.)

```
npm uninstall -g hardhat
sudo apt remove npm --purge
sudo apt remove nodejs --purge
sudo apt --autopurge
```

Install nodejs version 16 (or 18 I guess).

```
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Install npm

```
sudo apt install npm
```

Create and navigate to eatz/hh_instance/.

```
mkdir hh_instance && cd hh_instance
```

Install and run hardhat

```
npm init -y
npm install --save-dev hardhat

```

Create a JavaScript Project.

Pick a root directory -- USE hh_instance, the directory you should currently be in.

.gitignore doesn't matter, hh_instance is not being tracked.

Install dependencies with npm.

Start hardhat.

```
npx hardhat
```

Try running some of the following tasks:

```
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

The files at play here are contracts/Lock.sol, scripts/deploy.js, and tests/test.js.
Your default network for deployment is the built-in hardhat testing network which runs locally.  To use a test net or to deploy (shudder) to a real net, use the --network flag, and change your hardhat.config.js to contain credentials for your desired network.


## Configure hardhat.

SEE CONFIGURE.md
