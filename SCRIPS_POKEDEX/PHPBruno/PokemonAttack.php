<?php
class PokemonAttack{
    private $_IdPokemon;
    private $_IdAttack;

    public function get_IdPokemon(){
        return $this -> _IdPokemon;
    }
    public function get_IdAttack(){
        return $this -> _IdAttack;
    }

    public function set_IdPokemon($_IdPokemon){
        $this -> _IdPokemon = $_IdPokemon;
    }
    public function set_IdAttack($_IdAttack){
        $this -> _IdAttack = $_IdAttack;
    }

    public function __construct($_IdPokemon, $_IdAttack){
        $this -> set_IdPokemon($_IdPokemon);
        $this -> set_IdAttack($_IdAttack);
    }
}
$pokatt = new PokemonAttack(23,1023);
echo var_dump($pokatt);
