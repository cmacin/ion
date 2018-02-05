pragma solidity ^0.4.18;

interface IonLinkInterface
{

    function Verify( uint256 block_id, uint256 leaf_hash, uint256[] proof )
		public view returns (bool);

    function IonLinkVersion ()
        public pure returns (bytes32);
}


interface IonCompatible
{
    event IonTransfer(address indexed _recipient, address _currency, uint256 value, bytes32 indexed ref);

    event IonMint(uint256 value, bytes32 indexed ref);

    event IonBurn(uint256 value, bytes32 indexed ref);
}