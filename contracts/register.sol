pragma solidity 0.5.16;


contract register {
	bytes32[] internal name;
	bytes32[] internal email;
	bytes32[] internal mobile;
	bytes32[] internal password;
		
	function addAccount(bytes32 _name, bytes32 _email, bytes32 _mobile, bytes32 _password) public {

		name.push((_name));
		email.push((_email));
		mobile.push((_mobile));
		password.push((_password));	
	}
	
	function viewAccounts() public view returns(bytes32[] memory, bytes32[] memory, bytes32[] memory, bytes32[] memory) {
		return(name,email,mobile,password);
	}

	function loginAccount(bytes32 _mobile, bytes32 _password) public view returns(bool){
		
		uint i;
		uint j=0;

		if(mobile.length>0) {
			for(i=0;i<mobile.length;i++) {
				if((mobile[i])==(_mobile)) {
					j=i;
				}
			}
		
		
			if(password[j]==_password && mobile[j]==_mobile) {
				return true;
			}
			else {
				return false;
			}
		}
	}
}
