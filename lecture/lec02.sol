// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec2{

    // data type
    // boolean, bytes, address, uint

    // reference type
    // string, Arrays, struct

    // mapping type

    // boolean : true / false
    bool public b = false;

    // ! || == &&
    bool public b1 = !false; // ture
    bool public b2 = false || true; // ture
    bool public b3 = false == true; // false
    bool public b4 = false && true; // false

    // bytes 1 ~ 32
    bytes4 public bt = 0x12345678;
    bytes public bt2 = "STRING";

    // address :
    address public addr = 0xa54d3c09E34aC96807c1CC397404bF2B98DC4eFb;

    // int vs uint
    
    // int8
    // -2^7 ~ 2^7 -1
    int8 public it = 4;

    // uint8
    // 0~ 2^8 -1
    uint256 public uit = 132213;

    // + - * /
    uint8 public uit2 = 256;
}