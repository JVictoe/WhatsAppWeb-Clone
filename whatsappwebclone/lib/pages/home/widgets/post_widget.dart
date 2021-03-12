import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: desktop ? 15 : 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
                child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/4274876/pexels-photo-4274876.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                        child: Text(
                          "Representividade1",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.more_horiz_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
              ),
              Image.network(
                    "https://images.pexels.com/photos/6833449/pexels-photo-6833449.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.favorite_border
                        ),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                    const SizedBox(width: 4,),
                    IconButton(
                      icon: Icon(Icons.messenger_outline
                      ),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                    const SizedBox(width: 4,),
                    IconButton(
                      icon: Icon(Icons.send
                      ),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      icon: Icon(Icons.bookmark_border
                      ),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Curtido por jv1ctor__ e outras 300 pessoas",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      "HÀ 1 HORA",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              if(desktop) ... [
                Divider(
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: "Adicione um comentario...",
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){},
                      textColor: Colors.blue,
                      child: Text("Publicar"),
                    ),
                  ],
                ),
              ],
            ],
        ),
      ),
    );
  }
}
