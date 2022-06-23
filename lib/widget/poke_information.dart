import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/contants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: Colors.white
      ),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoRow('Name', pokemon.name),
            _buildInfoRow('Height', pokemon.height),
            _buildInfoRow('Weight', pokemon.weight),
            _buildInfoRow('Spawn Time', pokemon.spawnTime),
            _buildInfoRow('Weakness', pokemon.weaknesses),
            _buildInfoRow('Pre Evolution', pokemon.prevEvolution),
            _buildInfoRow('Next Evolution', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }


  _buildInfoRow(String label, dynamic value){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Constants.pokeInfoLabelStyle()),
          if(value is List && value.isNotEmpty)
          Text(value.join(' , '), style: Constants.pokeInfoStyle())
          else if(value == null)
          const Text('Not Available')
          else Text(value)
        ],
      );
  }
}