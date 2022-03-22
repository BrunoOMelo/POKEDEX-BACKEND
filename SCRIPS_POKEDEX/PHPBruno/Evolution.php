<?php
class Evolution{
    private $_IdEvolution;
    private $_Name;
	private $_Description;

    public function get_IdEvolution(){
        return $this -> _IdEvolution;
    }
    public function get_Name(){
        return $this -> _Name;
    }
	public function get_Description(){
		return $this -> _Description;
	}

    public function set_IdEvolution($_IdEvolution){
        $this -> _IdEvolution = $_IdEvolution;
    }
    public function set_Name($_Name){
        $this -> _Name = $_Name;
    }
	public function set_Description($_Description){
		$this -> _Description = $_Description;
	}

    public function __construct($_IdEvolution, $_Name, $_Description){
        $this -> set_IdEvolution($_IdEvolution);
        $this -> set_Name($_Name);
		$this -> set_Description($_Description);
    }
}
$evo = new Evolution(23,"troca","ocorre quando o pokemon é trocado");
echo var_dump($evo);
?>