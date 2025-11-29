// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleNFTSale is ERC721, Ownable {
    uint256 public tokenId;
    uint256 public price;
    bool public forSale = false;

    constructor() ERC721("CarToken", "CAR") Ownable(msg.sender) {}

    /// @notice Prodajalec mint-a avto token (NFT)
    function mintCar(uint256 _tokenId) external onlyOwner {
        _safeMint(msg.sender, _tokenId);
        tokenId = _tokenId;
    }

    /// @notice Nastavi ceno in da NFT naprodaj
    function setForSale(uint256 _price) external onlyOwner {
        require(ownerOf(tokenId) == msg.sender, "Nisi lastnik NFT-ja");
        price = _price;
        forSale = true;
    }

    /// @notice Kupec kupi NFT za fiksno ceno
    function buy() external payable {
        require(forSale, "NFT ni naprodaj");
        require(msg.value == price, "Napacen znesek");

        address seller = ownerOf(tokenId);

        // prenesi ETH prodajalcu
        payable(seller).transfer(msg.value);

        // prenesi NFT kupcu
        _transfer(seller, msg.sender, tokenId);

        forSale = false;
    }

    /// @notice Vrnemo osnovne podatke za UI ali testiranje
    function getInfo()
        external
        view
        returns(uint256 _id, address _owner, uint256 _price, bool _forSale)
    {
        return (tokenId, ownerOf(tokenId), price, forSale);
    }
}
