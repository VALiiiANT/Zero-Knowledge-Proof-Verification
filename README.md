
# Zero-Knowledge Proof

The primary objective of this project is to develop a secure and efficient zero-knowledge proof (zkSNARK) circuit that implements a particular logical gate. 
## Description

zkSNARK circuits are essential for privacy and scalability on the blockchain, as they allow for the verification of computations without revealing sensitive data. Using the Circom programming language, a logical gate circuit is implemented in this project.

The circuit is as follows:
![ckt](https://github.com/st-bfly/Zero-Knowledge-Proof-Verification/assets/72199039/cc8a8a6e-61ea-4fe4-ad7c-afb6b880c793)

The circuit uses the truth table shown below:

    A B X Y Q
    0 0 0 1 1
    0 1 0 0 0
    1 0 0 1 1
    1 1 1 0 1

The project's objective is to demonstrate that you are aware of the inputs A=0 and B=1 that result in a 0 output.
## Getting Started

#### Prerequisites
- Circom (2.0.0) installed on your system.
- Node.js
- Hardhat
- Metamask wallet

Follow the steps below to set up the circuit, generate the proof and verify it.

1. **Clone the Repository:** Clone this repository to your local machine using Git.

        git clone https://github.com/st-bfly Zero-Knowledge-Proof-Verification

2. **Design the circuit:** Design the zkSNARK circuit using Circom.

3. **Install Dependencies:** Install all the dependencies for this project using the following command.

        npm i

4. **Configure the Circuit:** The circuit configuration and input parameters are located in the repository itself. You may need to customize the circuit according to your specific use case.

5. **Compile the circuit:** Run this command to compile the circuit.

        npx hardhat circom

6. **Deploy and Verify:** Use Hardhat to deploy the Verifier contract and run the verification process to validate the proof on-chain. 

        npx hardhat run scripts/deploy.ts --network mumbai


This script will generate the call data for the proof and verify it using the deployed Verifier contract. If the verification is successful, it will print "Verifier result: true" to the console.
## Authors
[@AyushiRai](https://github.com/st-bfly)

