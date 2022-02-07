
import 'package:flutter/material.dart';



import '../constants.dart';

class ChatItem extends StatefulWidget {
  final Function ontap;
  final String name_chat;


  ChatItem({ this.ontap, this.name_chat});


  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      widget.ontap();
    },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color:Colors.blue),
        height: sizeFromHeight(context, 6),
        width: sizeFromWidth(context, 1),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(width: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10
                ),
                child: Expanded(
                  child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                         widget.name_chat,
                          style: labelStyle2,
                        ),
                      ),
                      // Text(
                      //     'kkkkkkkkk',
                      //     maxLines: 2,
                      //     style:  TextStyle(
                      //         fontSize: 13,
                      //         fontWeight: FontWeight.w400,
                      //         height: 1.5,
                      //         color: Colors.black,
                      //         overflow: TextOverflow.ellipsis,
                      //
                      //     )
                      // ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
