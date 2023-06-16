import 'package:flutter/material.dart';
import 'package:mobile_app/app/locator.dart';
import 'package:mobile_app/config/frappe_icons.dart';
import 'package:mobile_app/config/frappe_palette.dart';
import 'package:mobile_app/model/config.dart';
import 'package:mobile_app/services/api/api.dart';
import 'package:mobile_app/utils/enums.dart';
import 'package:mobile_app/utils/frappe_icon.dart';
import 'package:mobile_app/utils/helpers.dart';
import 'package:mobile_app/utils/navigation_helper.dart';
import 'package:mobile_app/views/form_view/form_view.dart';
import 'package:mobile_app/views/login/login_view.dart';
import 'package:mobile_app/widgets/frappe_bottom_sheet.dart';
import 'package:mobile_app/widgets/frappe_button.dart';
import 'package:mobile_app/widgets/user_avatar.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        title: const Text(
          'Profile',
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              // UserAvatar(
              //   uid: Config().userId!,
              //   size: 120,
              //   shape: ImageShape.roundedRectangle,
              // ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "Abdullah",
                // Config().user,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: FrappePalette.grey[900],
                ),
              ),
              // TODO: add view profile
              SizedBox(
                height: 3,
              ),
              Text(
                'View Profile',
                style: TextStyle(
                  color: FrappePalette.blue,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400]!,
                        blurRadius: 3.0,
                        offset: const Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Column(
                    children: [
                      ProfileListTile(
                        title: "My Settings",
                        onTap: () {
                          // pushNewScreen(
                          //   context,
                          //   screen: FormView(
                          //     name: Config().userId!,
                          //     doctype: "User",
                          //   ),
                          //   withNavBar: true,
                          // );
                        },
                        icon: const FrappeIcon(
                          FrappeIcons.my_settings,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Divider(),
                      ),
                      ProfileListTile(
                        title: "Documentation",
                        onTap: () async {
                          var url = "https://docs.erpnext.com/homepage";
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const FrappeIcon(
                          FrappeIcons.file,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Divider(),
                      ),
                      ProfileListTile(
                        title: "User Forum",
                        onTap: () async {
                          var url = "https://discuss.erpnext.com/";
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const FrappeIcon(
                          FrappeIcons.message_1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Divider(),
                      ),
                      ProfileListTile(
                        icon: const FrappeIcon(
                          FrappeIcons.bug,
                        ),
                        onTap: () async {
                          var issueUrl =
                              "https://github.com/frappe/mobile/issues";
                          // ignore: deprecated_member_use
                          if (await canLaunch(issueUrl)) {
                            // ignore: deprecated_member_use
                            await launch(
                              issueUrl,
                            );
                          } else {
                            throw 'Could not launch $issueUrl';
                          }
                        },
                        title: "Report an Issue",
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Divider(),
                      ),
                      ProfileListTile(
                        title: "About",
                        onTap: () async {
                          var apps = await locator<Api>().getVersions();
                          // ignore: use_build_context_synchronously
                          showModalBottomSheet(
                            context: context,
                            useRootNavigator: true,
                            isScrollControlled: true,
                            builder: (context) {
                              var socialMediaLinks = [
                                {
                                  "title": "Website",
                                  "url": "https://frappeframework.com",
                                },
                                {
                                  "title": "Source",
                                  "url": "https://github.com/frappe",
                                },
                                {
                                  "title": "Linkedin",
                                  "url":
                                      "https://linkedin.com/company/frappe-tech",
                                },
                                {
                                  "title": "Facebook",
                                  "url": "https://facebook.com/erpnext",
                                },
                                {
                                  "title": "Twitter",
                                  "url": "https://twitter.com/erpnext",
                                }
                              ];
                              return FractionallySizedBox(
                                heightFactor: 0.8,
                                child: Container(
                                  child: FrappeBottomSheet(
                                    title: "Frappe Framework",
                                    trailing: const Text("Close"),
                                    onActionButtonPress: () {
                                      Navigator.of(context).pop();
                                    },
                                    showLeading: false,
                                    body: ConstrainedFlexView(
                                      MediaQuery.of(context).size.height - 200,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 8.0,
                                            ),
                                            child: Text(
                                              'Open Source Applications for the Web',
                                            ),
                                          ),
                                          ...socialMediaLinks.map(
                                            (socialMediaLink) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 8.0,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "${socialMediaLink["title"]!}: ",
                                                    ),
                                                    GestureDetector(
                                                      child: Text(
                                                        socialMediaLink["url"]!,
                                                        style: const TextStyle(
                                                          color: FrappePalette
                                                              .blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ).toList(),
                                          const Divider(
                                            thickness: 1,
                                          ),
                                          const Text(
                                            "Installed Apps",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          ...apps.message.frappeApps.values.map(
                                            (app) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 8.0,
                                                ),
                                                child: Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "${app.title!}: ",
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "${app.version!} (${app.branch!})",
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ).toList(),
                                          const Spacer(),
                                          const Divider(
                                            thickness: 1,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 8.0,
                                            ),
                                            child: Text(
                                              "© Frappe Technologies Pvt. Ltd and contributors",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const FrappeIcon(
                          FrappeIcons.info_outlined,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Divider(),
                      ),
                      ProfileListTile(
                        title: "View Website",
                        onTap: () async {
                          // var url = Config().baseUrl!;
                          // if (await canLaunch(url)) {
                          //   await launch(
                          //     url,
                          //   );
                          // } else {
                          //   throw 'Could not launch $url';
                          // }
                        },
                        icon: const FrappeIcon(
                          FrappeIcons.external_link,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: FrappeRaisedButton(
                  height: 48,
                  fullWidth: true,
                  onPressed: () async {
                    await clearLoginInfo();
                    NavigationHelper.clearAllAndNavigateTo(
                      context: context,
                      page: Login(),
                    );
                  },
                  icon: FrappeIcons.logout,
                  titleWidget: Text(
                    "Logout",
                    style: TextStyle(
                      color: FrappePalette.red[600],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final Widget icon;

  const ProfileListTile({
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 10,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      leading: icon,
      trailing: FrappeIcon(
        FrappeIcons.arrow_right,
        size: 18,
        color: FrappePalette.grey[700],
      ),
      onTap: onTap,
      title: Text(title),
    );
  }
}

class ConstrainedFlexView extends StatelessWidget {
  final Widget child;
  final double minSize;
  final Axis axis;

  const ConstrainedFlexView(
    this.minSize, {
    required this.child,
    this.axis = Axis.vertical,
  });

  bool get isHz => axis == Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        double viewSize = isHz ? constraints.maxWidth : constraints.maxHeight;
        if (viewSize > minSize) return child;
        return SingleChildScrollView(
          scrollDirection: axis,
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: isHz ? double.infinity : minSize,
                maxWidth: isHz ? minSize : double.infinity),
            child: child,
          ),
        );
      },
    );
  }
}
