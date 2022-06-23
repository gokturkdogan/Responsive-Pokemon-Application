import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeBallImage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeBallImage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UIHelper.calculatePokeImageAndBallSize(),
            height: UIHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              errorWidget: (context, url, error) => Icon(Icons.no_crash),
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url)=> CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }
}
