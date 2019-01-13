pragma solidity ^0.4.0;

contract Copyright {
    struct User {
        address userid;  //用户id
        uint blockNumber;  //当前区块号
        string name;  //用户昵称
        uint token;  //用户资产
        uint status;  //用户状态 0-正常，-1-注销，1-冻结
    }
  
      struct CopyrightFile {
        address fileid;  //文件id
        uint blockNumber;  //当前区块号
        address userid;  //用户id
        string name;  //文件名称
        uint status;  //文件状态 0-正常，-1-注销，1-冻结
    }
  
      struct CopyrightKey {
        address fileid;  //文件id
        uint blockNumber;  //当前区块号
        string key;  //文件秘钥
    }

    struct CopyrightPrice {
        address priceid;  //定价id
        uint blockNumber;  //当前区块号
        address fileid;  //文件id
        address userid;  //用户id
        uint filePrice;  //文件售价
        uint userBonusRate;  //用户分成比例
        uint stockBonusRate;  //股权分成比例
        uint marketBonusRate;  //营销分成比例
    }

    mapping(address => User) users;  //用户账户
    mapping(address => CopyrightFile) public copyrightFile;  //版权文件
    mapping(address => CopyrightKey) copyrightKey;  //版权密钥
    mapping(address => CopyrightPrice) public  copyrightPrices;  //版权定价
  
}
