import 'package:flutter/material.dart';
import 'package:plants/models/plant.dart';
import 'package:plants/widgets/plant_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({
    super.key,
    required this.plant,
    required this.onSelectPlant,
  });

  final Plant plant;
  final void Function(Plant plant) onSelectPlant;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectPlant(plant);
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(plant.potImageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      plant.popularTitle,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (plant.environment == Environment.sombra)
                          PlantItemTrait(
                            icon: FontAwesomeIcons.cloud,
                            label: 'Sombra',
                          )
                        else if (plant.environment == Environment.meiasombra)
                          PlantItemTrait(
                            icon: FontAwesomeIcons.cloudSun,
                            label: 'Meia Sombra',
                          )
                        else if (plant.environment == Environment.sol)
                          PlantItemTrait(
                            icon: FontAwesomeIcons.sun,
                            label: 'Sol Pleno',
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
