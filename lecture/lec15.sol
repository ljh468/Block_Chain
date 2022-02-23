// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father{
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("KimDaeho");
    }
}

contract Son is Father{
    event sonName(string name);
    function who() public override{
        // emit FatherName("KimDaeho");
        super.who(); // 코드량이 많은경우 상속자에서 전체 가져옴
        emit sonName("KimJin");
    } 
}