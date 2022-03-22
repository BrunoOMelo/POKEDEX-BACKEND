<?php
class TYPE{
	private $_IdType;
	private $_Type;
	
	function get_IdType(){
		return $this -> _IdType;
	}
	function set_IdType($_IdType){
		$this -> _IdType = $_IdType;
	}
	
	function get_Type(){
		return $this -> _Type;
	}
	function set_Type($_Type){
		$this -> _Type = $_Type;
	}
	
	function __construct($_IdType, $_Type){
		$this -> set_IdType($_IdType);
		$this -> set_Type($_Type);
	}

	
}
$type = new Type(01,"grama");

echo var_dump($type);
echo $type->get_IdType();
?>