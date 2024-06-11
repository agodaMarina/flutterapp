import 'package:flutter/material.dart';


import '../../../theme.dart';


class RapprtScreen extends StatelessWidget {
  const RapprtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Text(
              'Rapports',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 26,
                    ),
                    suffixIcon: const Icon(
            Icons.mic,
            color: kPrimaryColor,
            size: 26,
                    ),
                    // helperText: "Search your topic",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "rechercher un rapport",
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
                    ),
                    isDense: true,
                  ),
                ),
          ),
          const SizedBox(
            height: 50,
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 90,
                  height: 22,
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 16,
                        color: kWhiteColor,
                      ),
                      Text(
                        "Generer",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (){},
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: kPrimaryColor.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 1))
                      ]),
                      
                  child: Row(
                    
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.picture_as_pdf,
                          color: kPrimaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rapport 0056",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "12/12/2021",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
           
          ),
        ]
      )
        
    );
  }
}