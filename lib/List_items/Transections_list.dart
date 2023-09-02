import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TransectionsMenu extends StatefulWidget {
  final String? image;
  final String? title;
  final String? account;
  final String? trans_id;
  final double? amount;
  final String icontext;
  final Color textcolour;

  TransectionsMenu({
    super.key,
    required this.image,
    required this.title,
    required this.account,
    required this.trans_id,
    required this.amount,
    required this.icontext,
    required this.textcolour,
  });

  @override
  State<TransectionsMenu> createState() => _TransectionsMenuState();
}

class _TransectionsMenuState extends State<TransectionsMenu> {
  final String time = DateFormat.jm().format(DateTime.now());
  final String date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {

      return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 90,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset.zero,
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(widget.image!),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                widget.title!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.account!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                   'Trans ID :',
                                    style: const TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    widget.trans_id!,
                                    style: const TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 3),
                                    child: Text(
                                      widget.icontext,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: widget.textcolour,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '\৳${widget.amount}\0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: widget.textcolour,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              Text(
                                '$time $date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white12,
              thickness: .5,
              height: 0,
            ),
          ],
        ),
      );

  }
}
