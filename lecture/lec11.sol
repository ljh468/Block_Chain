// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

/*
    오버라이딩 (virtual)
*/

contract Father{
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100;

    constructor(string memory _givenName){
        givenName = _givenName;
    }

    function getFamilyName() view public returns(string memory){
        return familyName;
    }

    function getGivenName() view public returns(string memory){
        return givenName;
    }

    function getMoney() view virtual public returns(uint256){
        return money;
    }
}

contract Son is Father{
    constructor() Father("James"){
    }
// contract Son is Father("James"){

    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }

    // 변경된 내용을 덮어씀
    function getMoney() view override public returns(uint256){
        return money + earning;
    }

}