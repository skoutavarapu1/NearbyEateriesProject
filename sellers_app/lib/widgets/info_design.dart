import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sellers_app/global/global.dart';
import 'package:sellers_app/mainScreens/items_screen.dart';
import 'package:sellers_app/model/menus.dart';

class InfoDesignWidget extends StatefulWidget {
  Menus? model;
  BuildContext? context;

  InfoDesignWidget({this.model, this.context});

  @override
  State<InfoDesignWidget> createState() => _InfoDesignWidgetState();
}

class _InfoDesignWidgetState extends State<InfoDesignWidget> {
  deleteMenu(String menuID) {
    FirebaseFirestore.instance
        .collection("sellers")
        .doc(sharedPreferences!.getString("uid"))
        .collection("menus")
        .doc(menuID)
        .delete();

    Fluttertoast.showToast(msg: "Menu Deleted Successfully Amigo.");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => ItemsScreen(model: widget.model)));
      },
      splashColor: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Divider(
                height: 2,
                thickness: 3,
                color: Colors.grey,
              ),
              Image.network(
                widget.model!.thumbnailUrl!,
                height: 220,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.model!.menuTitle!,
                    style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: "TrainOne",
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_sweep_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      //delete the menu
                      deleteMenu(widget.model!.menuID!);
                    },
                  ),
                ],
              ),
              Text(
                widget.model!.menuInfo!,
                style: TextStyle(
                    color: Colors.black, fontSize: 12, fontFamily: "Acme"),
              ),
              Divider(
                height: 1,
                thickness: 3,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
