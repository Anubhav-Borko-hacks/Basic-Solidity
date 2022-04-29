/*Why doesn't _tokenApprovals get reset after calling transferFrom in 
OpenZeppelin's implementation of ERC721?
Imagine A gives permission to B to transfer tokenId==111. 
That is, _tokenApprovals[111]=B. B executes transferFrom and 
sends the token to himself. Later, through some exchange for example, 
B sells the token 111 to another person, without having modified 
_tokenApprovals[111]. Couldn't he send the token to himself again,
 because _tokenApprovals[111] is still equal to B?*/

/* 
    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {
        require(ERC721.ownerOf(tokenId) == from, "ERC721: transfer from incorrect owner");
        require(to != address(0), "ERC721: transfer to the zero address");

        _beforeTokenTransfer(from, to, tokenId);

        // Clear approvals from the previous owner
        _approve(address(0), tokenId);

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);

        _afterTokenTransfer(from, to, tokenId);
    }
*/

