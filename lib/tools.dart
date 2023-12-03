import 'variables.dart';

void textsize() {
  if (text.length > 21) {
    textfontSize = 25;
  }
  if (text.length > 25) {
    textfontSize = 23;
  }
  if (text.length > 28) {
    textfontSize = 21;
  }
  if (text.length > 31) {
    textfontSize = 18;
  }
  if (text.length > 35) {
    textfontSize = 17;
  }
  if (text.length > 37) {
    textfontSize = 15;
  }
  if (text.length > 42) {
    textfontSize = 12;
  }
  if (text.length > 50) {
    text = 'impossible';
    textfontSize = 30;
    stop = true;
  }
}

void deletf() {
  if (text.length < 2) {
    ac();
  }
  if (text.length < 50) {
    if (text == 'impossible') {
      textfontSize = 12;
      stop = false;
      text = textre;
    }
    textre = text;
  }
  if (text.length < 42) {
    textfontSize = 12;
  }
  if (text.length < 37) {
    textfontSize = 15;
  }
  if (text.length < 35) {
    textfontSize = 17;
  }
  if (text.length < 31) {
    textfontSize = 18;
  }
  if (text.length < 28) {
    textfontSize = 21;
  }
  if (text.length < 25) {
    textfontSize = 23;
  }
  if (text.length < 21) {
    textfontSize = 30;
  }
  if (text.isNotEmpty) {
    text = text.replaceRange(text.length - 1, null, '');
  }
  if (nums2.isNotEmpty) {
    nums2 = nums2.replaceRange(nums2.length - 1, nums2.length, '');
  }
  if (nums2 == '') {
    num2 = 0;
    if (numl.isNotEmpty) {
      num1 = num.parse(numl.last);
    }
    if (text.isNotEmpty) {
      if ((text.split('').last.contains(RegExp(r'[\+\-=x/]'))) == true) {
        if (divis == true) {
          result *= num.parse(numl[numl.length - 1]);
        } else if (foit == true) {
          result /= num.parse(numl[numl.length - 1]);
        } else if (moin == true) {
          result += num.parse(numl[numl.length - 1]);
        } else if (plus == true) {
          result -= num.parse(numl[numl.length - 1]);
        }
        num1 = result;
        numl.removeAt(numl.length - 1);
      }
    }

    if (operationsl.isNotEmpty) {
      if (operationsl[operationsl.length - 1] == '/') {
        divis = true;
      } else if (operationsl[operationsl.length - 1] == 'x') {
        foit = true;
      } else if (operationsl[operationsl.length - 1] == '-') {
        moin = true;
      } else if (operationsl[operationsl.length - 1] == '+') {
        plus = true;
      }
    }
  } else {
    num2 = num.parse(nums2);
  }
}

void ac() {
  reset = true;
  if (text.isNotEmpty || result != 0) {
    text = '';
    newvalue = false;
    operation = false;
    past = false;
    divis = false;
    foit = false;
    moin = false;
    plus = false;
    egale = false;
    textfontSize = 30;
    stop = false;
    numl = [];
    nums1tol = false;
    operationsl = [];
    textre = '';
    resultfontsize = 40;
    text = '';
    result = 0;
    nums1 = '0';
    nums2 = '0';
    num1 = num.parse(nums1);
    num2 = num.parse(nums2);
  }
}
