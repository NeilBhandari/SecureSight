
# Live-AI-Surveillance-
=======
# Live AI Surveillance
Created by Neil Bhandari - Solo Project

This project addresses the hackathon’s Hard Track by combining AI and blockchain to create a secure, decentralized police body camera prototype. It uses TensorFlow.js with COCO-SSD and MoveNet models to detect weapons, people, and specific actions (like “hands up”) in real-time through webcam footage. Each event is automatically logged onto an Ethereum smart contract, guaranteeing tamper-proof and transparent records. The sleek, police-themed interface displays these detection events live, sorted clearly into weapon, people, and action categories, each updating dynamically alongside a timestamp. For easy documentation and audits, users can export logs directly as PDF reports. The system demonstrates how decentralized AI paired with blockchain technology can enhance accountability and security in critical areas like law enforcement surveillance.


To run:
npx hardhat node

npx hardhat run scripts/Deploy.js --network localhost

cd client

npm start

