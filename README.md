# Secure Sight: AI-Powered Real-Time Surveillance with Immutable Event Logging

## Overview

Secure Sight is a real-time AI surveillance prototype that analyzes live webcam footage to detect weapons, human presence, and specific actions such as "hands up".

Detected events are automatically logged and stored on an Ethereum smart contract, creating a tamper-proof and transparent audit trail. The system demonstrates how AI and blockchain can be combined to improve accountability in security-critical environments.

Originally developed as a solo hackathon project, Secure Sight explores practical applications of computer vision and decentralized systems in law enforcement and surveillance contexts.

---

## Problem

Traditional surveillance systems:

* Rely on centralized, mutable logs
* Lack verifiable audit trails
* Are vulnerable to tampering or deletion

This creates serious limitations in environments where accountability and transparency are critical.

---

## Solution

Secure Sight provides:

* Real-time AI detection using live webcam input
* Automatic classification of events (weapons, people, actions)
* Structured event logging with timestamps
* Immutable storage of key events on an Ethereum smart contract

This creates a verifiable and tamper-resistant record of surveillance data.

---

## Key Features

* Real-time webcam-based detection
* Weapon detection using COCO-SSD
* Pose/action detection using MoveNet
* Event categorization:

  * Weapons
  * People
  * Actions (e.g., "hands up")
* Live updating UI dashboard
* Blockchain-based event logging (Ethereum)
* Exportable logs as PDF reports

---

## System Architecture

1. Webcam feed → frame capture
2. TensorFlow.js models → inference (COCO-SSD, MoveNet)
3. Detection logic → event classification
4. Frontend → real-time display
5. Smart contract → event logging on Ethereum
6. Export system → PDF generation

---

## Why Blockchain

Blockchain is used to ensure:

* Tamper-proof event storage
* Transparent auditability
* Verifiable logs for sensitive use cases

### Tradeoffs

* Higher latency compared to traditional logging
* Gas costs for storing events
* Not all events are suitable for on-chain storage

---

## Tech Stack

Frontend:

* React.js

AI / Computer Vision:

* TensorFlow.js
* COCO-SSD (object detection)
* MoveNet (pose detection)

Blockchain:

* Ethereum
* Hardhat
* Ethers.js
* Solidity smart contracts

Language:

* JavaScript

---

## How to Run

Start local blockchain:

```
npx hardhat node
```

Deploy smart contract:

```
npx hardhat run scripts/Deploy.js --network localhost
```

Start frontend:

```
cd client
npm start
```

---

## What I Built

This is a solo project where I:

* Designed the end-to-end system architecture
* Integrated real-time computer vision models in the browser
* Built event classification and logging logic
* Implemented Ethereum smart contract for event storage
* Connected frontend detection pipeline with blockchain logging
* Developed UI for real-time monitoring and reporting

---

## Demo

[](https://www.youtube.com/watch?v=uUkSyrLQoyc)

---

## Future Improvements

* Hybrid logging system (on-chain + off-chain)
* Improved detection accuracy
* Alert/notification system
* Event filtering and analytics dashboard
* Multi-camera support

---

## Hackathon Context

Built as part of a hackathon "Hard Track" challenge focused on combining AI and blockchain technologies.

Devpost: https://devpost.com/software/securesight
