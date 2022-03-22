<?php
class PokemonType{
    private $_IdPokemon;
    private $_IdType;

    public function get_IdPokemon(){
        return $this -> _IdPokemon;
    }
    public function get_IdType(){
        return $this -> _IdType;
    }

    public function set_IdPokemon($_IdPokemon){
        $this -> _IdPokemon = $_IdPokemon;
    }
    public function set_IdType($_IdType){
        $this -> _IdType = $_IdType;
    }

    public function __construct($_IdPokemon, $_IdType){
        $this -> set_IdPokemon($_IdPokemon);
        $this -> set_IdType($_IdType);
    }
}
$poktype = new PokemonType(23,1023);
echo var_dump($poktype);
?>