// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract accesscontrol{

    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    mapping(bytes32 => mapping(address => bool)) public roles;

    bytes32 private constant ADMIN = keccak256(abi.encodePacked("ADMIN"));
    bytes32 private constant MANAGER = keccak256(abi.encodePacked("MANAGER"));
    bytes32 private constant USER = keccak256(abi.encodePacked("USER"));

    modifier onlyRole(bytes32 _role){
        require(roles[_role][msg.sender], "Not Authorized" );
        _;
    }

    constructor(){
        _grantrole(ADMIN, msg.sender);
    }

    function _grantrole(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit GrantRole(_role, _account);
    }

    function grantrole(bytes32 _role, address _account) external onlyRole(ADMIN){
        _grantrole(_role, _account);
    }

    function revokerole(bytes32 _role, address _account) external onlyRole(ADMIN){
        roles[_role][_account] = false;
        emit RevokeRole(_role, _account);
    }
}