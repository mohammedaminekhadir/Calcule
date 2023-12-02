import 'variables.dart';
import 'tools.dart';

void divisf() {
  if (text.isNotEmpty) {
    operationsl.add('+');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/]'))) {
      text = text.replaceRange(text.length - 1, null, '/');
      textre = text;
    } else {
      text += '/';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        result = num1 * num2;
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '';
    }
    divis = true;
    foit = false;
    moin = false;
    plus = false;
    textsize();
  }
}

void foitf() {
  if (text.isNotEmpty) {
    operationsl.add('+');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/]'))) {
      text = text.replaceRange(text.length - 1, null, 'x');
      textre = text;
    } else {
      text += 'x';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        result = num1 * num2;
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '';
    }
    divis = false;
    foit = true;
    moin = false;
    plus = false;
    textsize();
  }
}

void moinf() {
  if (text.isNotEmpty) {
    operationsl.add('+');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/]'))) {
      text = text.replaceRange(text.length - 1, null, '-');
      textre = text;
    } else {
      text += '-';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        result = num1 * num2;
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '';
    }
    divis = false;
    foit = false;
    moin = true;
    plus = false;
    textsize();
  }
}

void plusf() {
  if (text.isNotEmpty) {
    operationsl.add('+');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/]'))) {
      text = text.replaceRange(text.length - 1, null, '+');
      textre = text;
    } else {
      text += '+';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        result = num1 * num2;
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '';
    }
    divis = false;
    foit = false;
    moin = false;
    plus = true;
    textsize();
  }
}

void egalef() {
  if (text.isNotEmpty) {
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.contains(RegExp(r'[\+\-=x/]'))) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        result = num1 * num2;
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      egale = false;
    } else {
      result = num.parse(text);
    }
    if (nums2.isNotEmpty) {
      numl.add(nums2);
    }
  }
  if (result.toString().length > 16) {
    resultfontsize = 35;
  }
  if (result.toString().length > 19) {
    resultfontsize = 30;
  }
}
