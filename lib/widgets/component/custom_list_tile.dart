import 'package:smatii/index.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String? subTitle;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TSTextStyle.size16.semiBold.h1_5,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      // color: TSColors.customGrayCB2,
                    )
                  ],
                ),
                if (subTitle != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    subTitle!,
                    style: TSTextStyle.size12.medium,
                  ),
                ],
              ],
            ),
          ),
        ),
        const Divider(height: 1)
      ],
    );
  }
}
