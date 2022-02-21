// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

/*
    indexed
    이벤트안에서 사용하는 키워드
    특정한 이벤트의 값을 필터하여 가져올때 사용 
*/

contract lec14{

    event numberTracker(uint256 num, string str); // 특정한 num을 가져올 수 없음
    event numberTracker2(uint256 indexed num, string str); // 특정한 num을 가져올 수 있음

    uint256 num = 0;
    function PushEvent(string memory _str) public{
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }
}