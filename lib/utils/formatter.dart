
import 'package:flutter/services.dart';

///TextInputFormatter 관련 클래스
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var oldText = oldValue.text;
    var newText = newValue.text;
    var selectionIndex = newValue.selection.end;

    // '-'이 삭제될 시 앞에 한문자를 더 삭제합니다.
    if (oldText.length > newText.length && oldValue.composing == TextRange.empty) {
      if (oldText.length > selectionIndex && oldText[selectionIndex] == '-') {
        if (selectionIndex > 0 && isDigit(newText[selectionIndex - 1])) {
          newText = newText.substring(0, selectionIndex - 1) + newText.substring(selectionIndex, newText.length);
          selectionIndex--;
        }
      }
    }

    // replaceAll을 해줍니다. selectionIndex값 때문에 for loop로 해줍니다.
    String text = '';
    for (var i = newText.length - 1; i >= 0; i--) {
      // 역순 for loop로 해야 selectionIndex--문이 다음번에 i < selectionIndex에 영향을 미치지 않습니다.
      if (isDigit(newText[i])) {
        text = newText[i] + text;
      } else {
        if (i < selectionIndex) selectionIndex--;
      }
    }
    // 문자열 길이가 전화번호 길이만큼 잘라줍니다.
    if (text.startsWith('02') && text.length > 10) {
      text = text.substring(0, 10);
      if (selectionIndex > 10) selectionIndex = 10;
    } else 
    if (text.length > 11) {
      text = text.substring(0, 11);
      if (selectionIndex > 10) selectionIndex = 11;
    }

    // 조건부에 맞는 경우 자동 하이펀 추가
    if (text.length >= 3 && text.startsWith('010')) {
      // 지역번호(010, 070)
      if (text.length >= 7) {
        text = '${text.substring(0, 3)}-${text.substring(3, 7)}-${text.substring(7, text.length)}';
      } else {
        text = '${text.substring(0, 3)}-${text.substring(3, text.length)}';
      }
      if (selectionIndex >= 7) {
        selectionIndex += 2;
      } else if (selectionIndex >= 3) {
        selectionIndex++;
      }
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }

  bool isDigit(String ch) => ch.compareTo('0') >= 0 && ch.compareTo('9') <= 0;
}