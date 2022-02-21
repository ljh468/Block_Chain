// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec7{
    /*
    storage  : 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이되어 가스 비용이 비쌈 (ex : 함수밖의 변수, 함수자체)
    memory   : 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장이 됨 (ex : 함수 안의 값)
               그러나, storage 처럼 영속적이지 않고, 함수내에서만 유효하기에 storage보다 가스비용이 쌈
    Colldata : 주로 external function의 파라미터에서 사용됨 
    stack    : EVM (Ethereum Virtual Machine) 에서 stack data를 관리할때 쓰는 영역인데 1024mb 제한적 사용
    */

    // function -string.
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }
    function get_uint(uint256 _ui) public pure returns(uint256){
        return _ui;
    }
}