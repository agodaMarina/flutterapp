import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:projetflutter/theme.dart';



class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: kPrimaryColor,
        title: const Text(""),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_rounded,
              color: kPrimaryColor,),
          )
        ],
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(10),
        children:  [
          const Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('../images/user.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Nom Prénom',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child:Text(
                  "completez votre profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              )
            ]
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? kPrimaryColor : Colors.black12,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = profileCompletionCards[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    shadowColor: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            card.icon,
                            size: 30,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            card.title,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: kPrimaryColor,
                                  foregroundColor: kWhiteColor
                            ),
                            child: Text(card.buttonText),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  const Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profileCompletionCards.length,
            ),
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          )
        ],
      ),
      
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Details du profil",
    icon: Icons.person,
    buttonText: "continuer",
  ),
  ProfileCompletionCard(
    title: "Expérience professionnelle",
    icon: Icons.upload_file,
    buttonText: "Charger",
  ),
  ProfileCompletionCard(
    title: "Vos talents",
    icon: Icons.star,
    buttonText: "Ajouter",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.insights,
    title: "Activités",
  ),
  CustomListTile(
    icon: Icons.location_on_outlined,
    title: "Localisation",
  ),
  CustomListTile(
    title: "Notifications",
    icon: Icons.notifications,
  ),
  CustomListTile(
    title: "Se deconnecter",
    icon: Icons.logout,
  ),
];