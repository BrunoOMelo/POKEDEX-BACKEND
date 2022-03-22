class TYPE{
	private $IdType;
	private $Type;
	
	function getIdType(){
		return $this -> IdType;
	}
	function setIdType($IdType){
		$this -> IdType = $IdType;
	}
	
	function getType(){
		return $this -> $Type;
	}
	function setType($Type){
		$this -> Type = $Type;
	}
	
	function __construct($IdType, $Type){
		$this -> setIdType($IdType);
		$this -> setType($Type);
	}
}