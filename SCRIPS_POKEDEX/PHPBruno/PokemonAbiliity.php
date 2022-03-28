<?php
class PokemonAbiliity{
    private $_IdPokemon;
    private $_IdAbiliity;

    public function get_IdPokemon(){
        return $this -> _IdPokemon;
    }
    public function get_IdAbiliity(){
        return $this -> _IdAbiliity;
    }

    public function set_IdPokemon($_IdPokemon){
        $this -> _IdPokemon = $_IdPokemon;
    }
    public function set_IdAbiliity($_IdAbiliity){
        $this -> _IdAbiliity = $_IdAbiliity;
    }

    public function __construct($_IdPokemon, $_IdAbiliity){
        $this -> set_IdPokemon($_IdPokemon);
        $this -> set_IdAbiliity($_IdAbiliity);
    }
}
$pokab = new PokemonAbiliity(23,1023);
echo var_dump($pokab);
?>