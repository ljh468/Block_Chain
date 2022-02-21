// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

/*
    두개 이상 상속
*/

contract Father{
    uint256 public fatherMoney = 100;

    function getFatherName() pure public returns(string memory){
        return "KimJung";
    }

    function getMoney() view public virtual returns(uint256){
        return fatherMoney;
    }
}

contract Mother{
    uint256 public motherMoney = 500;

    function getMotherName() pure public returns(string memory){
        return "Leesol";
    }

    function getMoney() view public virtual returns(uint256){
        return motherMoney;
    }
}

contract Son is Father, Mother{
    function getName() pure public returns(string memory){
        return "Kimhoon";
    }
    
    function getMoney() public view override(Father, Mother) returns(uint256){
        return fatherMoney + motherMoney;
    }
}