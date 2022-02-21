// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

/*
    event를 활용하여 값 출력
*/

contract lec13{

    event info(string anem, uint256 money);

    function sendMoney() public {
        emit info("Leejaehoon", 1000);
    }
}