import 'package:smatii/index.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.answerTitle,
    required this.answerBody,
  });

  final String answerTitle;
  final String answerBody;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        answerTitle,
        style: TSTextStyle.size16.semiBold,
      ),
      textColor: Colors.black,
      iconColor: Colors.black,
      backgroundColor: TSColors.flyGrey200,
      collapsedBackgroundColor: TSColors.flyGrey200,
      shape: const Border(
        bottom: BorderSide(
          width: 0.5,
          color: TSColors.flyGrey700,
        ),
      ),
      collapsedShape: const Border(
        bottom: BorderSide(
          width: 0.5,
          color: TSColors.flyGrey700,
        ),
      ),
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 0.5,
                color: TSColors.flyGrey700,
              ),
            ),
            color: Colors.white, // 원하는 배경색 설정
          ),
          padding: const EdgeInsets.all(16),
          child: Text(answerBody),
        ),
      ],
    );
  }
}
