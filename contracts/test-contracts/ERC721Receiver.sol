// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.19;

import {Contributor} from "./Contributor.sol";

contract ERC721Receiver is Contributor {
  // Equals to `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`
  // which can be also obtained as `IERC721Receiver(0).onERC721Received.selector`
  bytes4 private constant _ERC721_RECEIVED = 0x150b7a02;

  function onERC721Received(address, address, uint256, bytes memory) public pure returns (bytes4) {
    return _ERC721_RECEIVED;
  }
}
