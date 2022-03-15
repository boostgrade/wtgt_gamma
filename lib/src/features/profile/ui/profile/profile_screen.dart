import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  const ProfileScreen(this.user, {Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                minRadius: 30,
                backgroundImage: NetworkImage(widget.user.photoUrl),
              ),
              Column(
                children: [
                  Text('${widget.user.name} ${widget.user.lastName}'),
                  IconButton(
                    icon: SvgPicture.asset(
                      Asset.svg.edit,
                      width: 24,
                      height: 24,
                    ),
                    splashRadius: 24,
                    onPressed: () {
                      // TODO(any): обработать нажатие на кнопку
                    },
                  ),
                ],
              ),
              IconButton(
                icon: SvgPicture.asset(
                  Asset.svg.settings,
                  width: 42,
                  height: 42,
                ),
                splashRadius: 24,
                onPressed: () {
                  // TODO(any): обработать нажатие на кнопку
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
