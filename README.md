# remix-ide-vns

Remix is a browser-based compiler and IDE that enables users to build **Smart contracts with Solidity language** and to debug transactions.

The Venus Remix IDE is derived from the Ethereum Remix IDE


## Offline Usage

https://github.com/AMTCOIN/remix-ide-vns gives one way to use Remix IDE locally. Please check it out.

Note: it contains the latest release of Solidity available at the time of the packaging. No other compiler versions are supported.


## INSTALLATION:

Install **npm** and **node.js** (see https://docs.npmjs.com/getting-started/installing-node), then do:

Clone the github repository (`wget` need to be installed first) :

```bash
git clone https://github.com/AMTCOIN/remix-ide-vns

cd remix-ide-vns
npm install
npm start
```

## DEVELOPING:

Run `npm start` and open `http://127.0.0.1:8080` in your browser.

Then open your `text editor` and start developing.
The browser will automatically refresh when files are saved.


### Troubleshooting building

Some things to consider if you have trouble building the package:

- Make sure that you have the correct version of `node`, `npm` and `nvm`. 

Run:

```bash
node --version
npm --version
nvm --version
```

- In Debian based OS such as Ubuntu 14.04LTS you may need to run `apt-get install build-essential`. After installing `build-essential` run `npm rebuild`.

## Unit Testing

Register new unit test files in `test/index.js`.
The tests are written using [tape](https://www.npmjs.com/package/tape).

Run the unit tests via: `npm test`

For local headless browser tests run `npm run test-browser`
(requires Selenium to be installed - can be done with `npm run selenium-install`)

Running unit tests via `npm test` requires at least node v7.0.0

## Browser Testing

To run the Selenium tests via Nightwatch:

 - Build Remix IDE and serve it: `npm run build && npm run serve` # starts web server at localhost:8080
 - Make sure Selenium is installed `npm run selenium-install` # don't need to repeat
 - Run a selenium server `npm run selenium`
 - Run all the tests `npm run nightwatch_local_firefox` or `npm run nightwatch_local_chrome`
 - Or run a specific test case: 
 
		- npm run nightwatch_local_ballot
		
		- npm run nightwatch_local_libraryDeployment
		
		- npm run nightwatch_local_solidityImport
		
		- npm run nightwatch_local_recorder
		
		- npm run nightwatch_local_transactionExecution
		
		- npm run nightwatch_local_staticAnalysis
		
		- npm run nightwatch_local_signingMessage

		- npm run nightwatch_local_console
		
		- npm run nightwatch_local_remixd # remixd needs to be run
