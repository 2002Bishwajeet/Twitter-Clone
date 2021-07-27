import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/providers/auth_provider.dart';

import '../themes.dart';

class DrawerWidget extends ConsumerWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _logOut = watch(authServicesProvider);
    return Drawer(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          padding: const EdgeInsets.fromLTRB(
            16.0,
            16.0,
            0.0,
            8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      "https://images.pexels.com/photos/2811087/pexels-photo-2811087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                  radius: 25),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Carol hans',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "@Carol_21",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: IconButton(
                    splashRadius: 15,
                    onPressed: () {},
                    icon: Icon(Icons.expand_more)),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: [
                          TextSpan(
                              text: '239 ',
                              style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Following ')
                        ]),
                  ),
                  SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: [
                          TextSpan(
                              text: '18k ',
                              style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Followers ')
                        ]),
                  ),
                ],
              ),
              Divider(),
              // SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                contentPadding: EdgeInsets.zero,
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notes),
                contentPadding: EdgeInsets.zero,
                title: Text('Lists'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.topic_sharp),
                contentPadding: EdgeInsets.zero,
                title: Text('Topics'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark_outline_rounded),
                contentPadding: EdgeInsets.zero,
                title: Text('Bookmarks'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lightbulb_outline_rounded),
                contentPadding: EdgeInsets.zero,
                title: Text('Moments'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star_outline_rounded),
                contentPadding: EdgeInsets.zero,
                title: Text('Monetisation'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Log Out'),
                onTap: () => _logOut.logOut(),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Settings and privacy',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Help Centre',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Spacer(),
              Divider(),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.lightbulb,
                        color: TwitterTheme.blueTColor,
                      )),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.qr_code,
                        color: TwitterTheme.blueTColor,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
