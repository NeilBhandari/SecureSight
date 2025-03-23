const fs = require("fs");
const path = require("path");

async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const DetectionLogger = await ethers.getContractFactory("DetectionLogger");
    const detectionLogger = await DetectionLogger.deploy();
    await detectionLogger.waitForDeployment();

    const address = await detectionLogger.getAddress();
    console.log("DetectionLogger deployed to:", address);

    // ✨ Write to frontend directory
    const frontendPath = path.join(__dirname, "..", "client", "src", "contract-address.json");
    fs.writeFileSync(frontendPath, JSON.stringify({ DetectionLogger: address }, null, 2));

    console.log(`✅ Address saved to contract-address.json`);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
