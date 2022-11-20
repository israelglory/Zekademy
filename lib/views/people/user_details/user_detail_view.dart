import 'package:flutter/material.dart';
import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/people/user_details/user_detail_controller.dart';

class UserDetailsView extends StatelessWidget {
  final User user;
  const UserDetailsView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailsController>(
      init: UserDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            centerTitle: false,
            title: AppText(
              user.name,
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ///User Avatar including the name and username
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        user.profileImage,
                        height: 90,
                        width: 90,
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            user.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                            size: 24,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          AppText(
                            '@${user.username}',
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                //Email Row
                Row(
                  children: [
                    const AppText(
                      'Email:',
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    AppText(
                      user.email,
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ],
                ),
                //Address
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    const AppText(
                      'Address:',
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Expanded(
                      child: AppText(
                        '${user.address.street},${user.address.suite}, ${user.address.city}, ${user.address.zipcode}',
                        size: 14,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                //Phone Nmber Row
                Row(
                  children: [
                    const AppText(
                      'Phone:',
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    AppText(
                      user.phone.split(' ').first,
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                //Website Row
                Row(
                  children: [
                    const AppText(
                      'Website:',
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    AppText(
                      user.website,
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
