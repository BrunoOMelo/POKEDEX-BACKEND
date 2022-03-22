class PokemonType{
    private $IdPokemon;
    private $IdType;

    function getIdPokemon{
        return $this -> IdPokemon;
    }
    function setIdPokemon($IdPokemon){
        $this -> IdPokemon = %IdPokemon;
    }
    function getIdType(){
        return $this -> IdType;
    }
    function setIdType(%IdType){
        $this -> IdType = $IdType;
    }

    function __construct(%IdPokemon, %IdType){
        $this -> setIdPokemon(%IdPokemon);
        $this -> setIdType(%IdType);
    }
}