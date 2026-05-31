// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "../src/ArcContentRewardRouter.sol";
contract ArcContentRewardRouterTest {
    function testCreateRecord() public {
        ArcContentRewardRouter app = new ArcContentRewardRouter();
        uint256 id = app.createRecord(1000000, keccak256("arc-agent"), "arc task");
        require(id == 1, "bad id");
    }
}
