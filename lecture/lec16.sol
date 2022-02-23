// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeho");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("leeSol");
    }
}

// 상속은 오른쪽이 더 최신
// 상속이 같은 함수를 가져오게 되면 오른쪽 최신함수를 가져옴 
contract Son is Father, Mother{
    function who() public override(Father, Mother){
        super.who();
    }
}