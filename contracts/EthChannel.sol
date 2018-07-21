pragma solidity ^0.4.24;

contract PaymentChannel{
    
    
    
    /*
        hub smart contract 
        
    */
    constructor(address hub,address signer,address paymentToken) public{
        
    }
    
    modifier onlyHub{
        _;
    }
    
    /*
    opens channel between 
        msg.sender and 
        hub
        with deposit of value msg.value on side of creator
        
        requires payment of 1 FIN for Each ETH of deposit
    */
    
    function openChannel() payable public{
        
    }
    
    /*Customer to close the channel 
      needs to present message signed by hub
      Message must have following form
      "[NUM].You have [NUM].[NUM] if you know the secret 0x..."
      where [NUM] is exacly 18 digits padded with zero if required
      and 0x... is keccak256 of a secret message. 
      
      eg. "000000000000000003.You have 000000000000000003.123000000000000000 if you know the secret 0x...."
      
    */
    function closeChannelByCustomer(bytes sign,uint256 value,uint256 nounce,string secret) public{

    }
    
    /*
    msg.value is maximum channel exposure in case hub private key has been stolen
    */
    function joinChannel(uint256 channelId) onlyHub public payable{
        
    }
    
    /*
        to close Channel that has not been joined yet
    */
    function cancelChannel() public{
        
    }
    
    function closeChannelByHub(bytes sign,uint256 value, uint256 nounce, string secret) public{
        
    }
    
    function challengeByCustomer(bytes sign,uint256 value,uint256 nounce,string secret) public{
        
    }
    
    function challengeByHub(bytes sign,uint256 value,uint256 nounce,string secret) public{
        
    }
    
    
    
    function getMessage(uint256 val, uint256 nounce, bytes32 secret, bool isHub) pure returns(string){

    }
    
    /*
        forms message like 
        [NUM].You have [NUM].[NUM] afret withdraw [NUM].[NUM] to [ETHADDRESS]
        signed by hub. Once server generate such signature it blocks all transfers from and to address until 
        withdraw is called
    */
    function getWithdrawMessage(uint256 val, uint256 nounce, uint256 sumToWithdraw, address to) pure returns(string){

    }
    
    /*
        forms message like 
        [NUM].You have [NUM].[NUM] afret deposit [NUM].[NUM] from [ETHADDRESS]
        signed by hub. Once server generate such signature it blocks all transfers from and to address until 
        deposit is called
    */
    function getDepositMessage(uint256 val, uint256 nounce, uint256 sumToWithdraw, address from) pure returns(string){

    }
    
    /*
        withdraw requires 1 FIN for every ETH withdrawn, 
        withdraw is used to get some money back without closing the channel
        it also  update a nounce and take payment in FIN for transfer made to/from 
        this channel
    */
    function withdraw(bytes sign,uint256 val, uint256 nounce, uint256 sumToWithdraw, address to) returns (bool){

    }
    
    /*
        withdraw requires 1 FIN for every ETH withdrawn, 
        withdraw is used to get some money back without closing the channel
        it also  update a nounce and take payment in FIN for transfer made to/from
        this channel
    */
    function deposit(bytes sign,uint256 val, uint256 nounce, uint256 sumToWithdraw, address to) returns (bool){

    }
    
    
    event ChanelOpened(uint256 channelId,address sender,uint256 value);
    event ChanelJoined(uint256 channelId,address sender,uint256 value);
    event ChanelCancelled(uint256 channelId);
}
