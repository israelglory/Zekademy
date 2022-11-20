import 'package:zekademy/exports/exports.dart';
import 'package:zekademy/views/people/user_details/user_detail_view.dart';

class UserItem extends StatelessWidget {
  final User user;
  const UserItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(14, 12, 14, 0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
        border: Border.all(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              user.profileImage,
              height: 56,
              width: 56,
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
                  color: AppColors.black,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w600,
                  size: 18,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                AppText(
                  '@${user.username}',
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                  size: 15,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          AppButton(
            padding: const EdgeInsets.fromLTRB(17, 7, 17, 7),
            onPressed: () {
              Get.to(
                () => UserDetailsView(user: user),
                transition: Transition.zoom,
                duration: const Duration(seconds: 0, milliseconds: 400),
                curve: Curves.fastOutSlowIn,
              );
            },
            borderColor: AppColors.borderColor,
            borderWidth: 1,
            radius: 5,
            child: const AppText(
              'View',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
