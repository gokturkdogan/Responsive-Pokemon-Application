import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/contants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeTypeName extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeTypeName({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? '',
                  style: Constants.pokemonNameStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: Constants.pokemonNameStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(
              pokemon.type
              ?.join(' , ') 
              ?? '',
              style: Constants.chipStyle(),
              )
              )
        ],
      ),
    );
  }
}