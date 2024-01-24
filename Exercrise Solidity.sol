// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Homework{

    bool public b = true;
    uint public x = 0;

//Ex1:
    function get_b() public view returns(bool){
        return b;
    }

//Ex2:
    function addToX2(uint y) public{
        x += y;
    }

//Ex3:
    modifier onlyIncrease(uint z) {
        require( z > 0, "Error, x decreases");
        x += z;
        _;
    }
    function increaseX(uint z) public onlyIncrease(z){

    }

//Ex4:
    function returnTwo() public pure returns(int number, bool success){
        number = -2;
        success = true;
    }
}