pragma solidity ^0.5.2;


contract IDelegationManager {
  event Staked(address indexed user, uint256 indexed delegatorId, uint256 indexed activatonEpoch, uint256 amount, uint256 total);
  event Unstaked(address indexed user, uint256 indexed delegatorId, uint256 amount, uint256 total);
  event UnstakeInit(address indexed user, uint256 indexed delegatorId, uint256 indexed deactivationEpoch);
  event Bonding(uint256 indexed delegatorId, uint256 indexed validatorId, uint256 indexed amount);
  event UnBonding(uint256 indexed delegatorId, uint256 indexed validatorId);
  event ReBonding(uint256 indexed delegatorId, uint256 indexed oldValidatorId, uint256 indexed newValidatorId);
  event ReStaked(uint256 indexed delegatorId, uint256 indexed amount, uint256 total);


  function stake(uint256 amount) public;
  function stakeFor(address user, uint256 amount) public;
  function slash(uint256[] memory _delegators, uint256 slashRate) public;
  function reStake(uint256 delegatorId, uint256 amount, bool stakeRewards) public;
  function unstake(uint256 delegatorId, uint256 index) public;
  function unstakeClaim(uint256 delegatorId) public;
  function claimRewards(uint256 delegatorId) public;
  function bond(uint256 delegatorId, uint256 validatorId) public;
  function unBond(uint256 delegatorId, uint256 index) public;
  function unBondLazy(uint256[] memory _delegators, uint256 epoch, address validator) public returns(uint256);
  function revertLazyUnBond(uint256[] memory _delegators, uint256 epoch, address validator) public returns(uint256);
  function unbondAll(uint256 validatorId) public;
  function bondAll(uint256 validatorId) public;
  function validatorUnstake(uint256 validatorId) public;

}
