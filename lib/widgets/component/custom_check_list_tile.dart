import 'package:smatii/index.dart';

class CustomCheckListTile extends StatelessWidget {
  const CustomCheckListTile({
    Key? key,
    required this.text,
    this.patternList,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  /// 내용
  final String text;
  /// 내용 패턴 적용
  final List<EasyRichTextPattern>? patternList;
  /// 체크 여부
  final bool value;
  /// 클릭 시 이벤트
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return InkWell(
          onTap: () {
            return onChanged(!value);
          },
          child: value
              ? SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(
                            color: TSColors.etc707070,
                            width: 1.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 9),
                      Expanded(
                        child: EasyRichText(
                          text,
                          defaultStyle: TSTextStyle.size14.medium,
                          patternList: patternList,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: TSColors.etc707070,
                            width: 1.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 9),
                      Expanded(
                        child: EasyRichText(
                          text,
                          defaultStyle: TSTextStyle.size14.medium,
                          patternList: patternList,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
        );
      }
    );
  }
}
