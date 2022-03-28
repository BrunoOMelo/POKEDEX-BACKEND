<?php
class PokemonEvolution{
    private $_IdPokemon;
    private $_IdEvolution;

    public function get_IdPokemon(){
        return $this -> _IdPokemon;
    }
    public function get_IdEvolution(){
        return $this -> _IdEvolution;
    }

    public function set_IdPokemon($_IdPokemon){
        $this -> _IdPokemon = $_IdPokemon;
    }
    public function set_IdEvolution($_IdEvolution){
        $this -> _IdEvolution = $_IdEvolution;
    }

    public function __construct($_IdPokemon, $_IdEvolution){
        $this -> set_IdPokemon($_IdPokemon);
        $this -> set_IdEvolution($_IdEvolution);
    }
}
$pokevo = new PokemonEvolution(23,1023);
echo var_dump($pokevo);
?>