// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec18{
    uint256[] public ageArray;
    uint256[10] public ageFicedSizeArray;

    string[] public nameArray = ["Kal", "Jhon", "Kerri"];

    function AgeLength() public view returns(uint256){
        return ageArray.length;
    }

    // 0 -> 50 // 1 -> 70 // length : 2
    function AgePush(uint256 _age)public{
        ageArray.push(_age);
    } 

    // 1 -> 70
    function AgeGet(uint256 _index) public view returns(uint256){
        return ageArray[_index];
    }

    // 0 -> 50 // length : 1
    // 가장 최신의 값을 삭제
    function AgePop() public {
        ageArray.pop();
    }
    
    // 0 -> 0 // 1 -> 70 // length : 2
    // index를 통해서 삭제
    function AgeDelete(uint256 _index) public {
        delete ageArray[_index];
    }

    // 0 -> 90 // 1 -> 70 // length : 2
    // index를 통해서 삭제
    function AgeChange(uint256 _index, uint256 _age) public{
        ageArray[_index] = _age;
    }
}