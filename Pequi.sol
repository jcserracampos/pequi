contract Maoe {
    mapping (address => uint256) public balanceOf;

    function MyToken(
        uint256 initialSupply
    ) {
        balanceOf[msg.sender] = initialSupply;
    }

    function transferFunds(
        address _to,
        uint256 _value
    ) {
        require(balanceOf[msg.sender] >= _value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);
        balanceof[msg.sender] -= _value;
        balenceOf[_to] += _value;
    }

}