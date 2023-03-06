import 'package:disaster_management/src/constants/colors.dart';
import 'package:disaster_management/src/constants/image_strings.dart';
import 'package:disaster_management/src/constants/sizes.dart';
import 'package:disaster_management/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            tEditProfile,
            style: Theme.of(context).textTheme.headline4,
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(tprofileImage)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tFullName),
                        prefixIcon: Icon(LineAwesomeIcons.user)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tPhoneNo),
                        prefixIcon: Icon(LineAwesomeIcons.phone)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: Icon(LineAwesomeIcons.fingerprint)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () =>
                              Get.to(() => const UpdateProfileScreen()),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(
                            tEditProfile,
                            style: TextStyle(color: tDarkColor),
                          ))),
                  const SizedBox(height: tFormHeight - 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(
                        TextSpan(
                          text: tjoinedAt,
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                                text: tjoinedAt,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12))
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none),
                        child: const Text(tDelete),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
