

import 'package:flutter/material.dart';

import '/constants/image_string.dart';

const double tDefaultSize = 10.0;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _profileScreenState createState() => _profileScreenState();

}

// ignore: camel_case_types
class _profileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text("Profile", style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: const Image(
                      image: AssetImage(profileUser1),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Md Kamrul Hasan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),
                const Text("donvhe172638@fpt.edu.vnn",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    )),
                const SizedBox(height: 50),
                const Divider(color: Colors.black),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.teal,
                              size: 30,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Changes to your account details",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.warning,
                                color: Colors.teal,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.teal,
                              size: 30,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Save Contact",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Manage your saved contact",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.lock_outline,
                              color: Colors.teal,
                              size: 30,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Face ID/ Touch ID",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Manage your device security",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Switch(value: true, onChanged: (value) => false),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.security,
                              color: Colors.teal,
                              size: 30,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Two-Factor Authentication",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Further secure your account for safety",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.teal,
                              size: 30,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Log out",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Further secure your account for safety",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
     
    );
  }
}
