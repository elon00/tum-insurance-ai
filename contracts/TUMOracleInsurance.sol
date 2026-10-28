// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title TUMOracleInsurance
 * @dev Autonomous Agent Commercial Liability with API3 dAPI Oracle Triggers
 */
contract TUMOracleInsurance {
    struct AgentLiabilityPolicy {
        address agentAddress;
        uint256 maxLiabilityLimit;
        uint256 premiumPaid;
        bytes32 api3DapiServer;
        bool isActive;
    }

    mapping(address => AgentLiabilityPolicy) public agentPolicies;
    address public immutable policyUnderwriter;

    event AgentInsured(address indexed agent, uint256 maxLiability, bytes32 dapi);
    event LiabilitySettled(address indexed agent, address indexed victim, uint256 amount);

    constructor() {
        policyUnderwriter = msg.sender;
    }

    function bindAgentLiabilityPolicy(bytes32 dapi, uint256 liabilityLimit) external payable {
        require(msg.value > 0, "Premium required");
        agentPolicies[msg.sender] = AgentLiabilityPolicy({
            agentAddress: msg.sender,
            maxLiabilityLimit: liabilityLimit,
            premiumPaid: msg.value,
            api3DapiServer: dapi,
            isActive: true
        });

        emit AgentInsured(msg.sender, liabilityLimit, dapi);
    }

    function settleMalpracticeClaim(address agent, address victim, uint256 claimAmount) external {
        AgentLiabilityPolicy storage p = agentPolicies[agent];
        require(p.isActive, "Policy inactive");
        require(claimAmount <= p.maxLiabilityLimit, "Exceeds liability limit");
        require(msg.sender == policyUnderwriter, "Only underwriter adjudicator");

        p.isActive = false;
        payable(victim).transfer(claimAmount);
        emit LiabilitySettled(agent, victim, claimAmount);
    }
}
