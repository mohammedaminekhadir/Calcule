import 'variables.dart';
import 'tools.dart';

void divisf() {
  if (text.isNotEmpty) {
    divis = true;
    foit = false;
    moin = false;
    plus = false;
    textsize();
    operationsl.add('/');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/.]'))) {
      text = text.replaceRange(text.length - 1, null, '/');
      textre = text;
    } else {
      text += '/';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (num2 != 0) {
        if (divis == true) {
          result = num1 / num2;
        } else if (foit == true) {
          result = num1 * num2;
        } else if (moin == true) {
          result = num1 - num2;
        } else if (plus == true) {
          result = num1 + num2;
        }
      }
      if (reset == true) {
        num1 = num.parse(nums1);
        num2 = num.parse(nums2);
        if (num2 != 0) {
          if (divis == true) {
            result = num1 / num2;
          } else if (foit == true) {
            result = num1 * num2;
          } else if (moin == true) {
            result = num1 - num2;
          } else if (plus == true) {
            result = num1 + num2;
          }
        }
        reset = false;
      }

      numl.add(nums2);
      num1 = result;
      newvalue = true;

      nums2 = '0';
      num2 = num.parse(nums2);

      print(num2);
    }
  }
}

void foitf() {
  if (text.isNotEmpty) {
    divis = false;
    foit = true;
    moin = false;
    plus = false;
    textsize();
    operationsl.add('x');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/.]'))) {
      text = text.replaceRange(text.length - 1, null, 'x');
      textre = text;
    } else {
      text += 'x';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (zeron == true) {
        if (divis == true) {
          result = num1 / num2;
        } else if (foit == true) {
          result = num1 * num2;
        } else if (moin == true) {
          result = num1 - num2;
        } else if (plus == true) {
          result = num1 + num2;
          zeron = false;
          print(zeron);
        }
      }
      if (reset == true) {
        num1 = num.parse(nums1);
        num2 = num.parse(nums2);
        if (zeron == true) {
          if (divis == true) {
            result = num1 / num2;
          } else if (foit == true) {
            result = num1 * num2;
          } else if (moin == true) {
            result = num1 - num2;
          } else if (plus == true) {
            result = num1 + num2;
          }
          print(zeron);
          zeron = false;
        }
        reset = false;
      }

      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '0';
      num2 = num.parse(nums2);
      zeron = false;
    }
  }
}

void moinf() {
  if (text.isNotEmpty) {
    divis = false;
    foit = false;
    moin = true;
    plus = false;
    textsize();
    operationsl.add('-');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/.]'))) {
      text = text.replaceRange(text.length - 1, null, '-');
      textre = text;
    } else {
      text += '-';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (num2 != 0) {
        if (divis == true) {
          result = num1 / num2;
        } else if (foit == true) {
          result = num1 * num2;
        } else if (moin == true) {
          result = num1 - num2;
        } else if (plus == true) {
          result = num1 + num2;
        }
      }
      if (reset == true) {
        num1 = num.parse(nums1);
        num2 = num.parse(nums2);
        if (num2 != 0) {
          if (divis == true) {
            result = num1 / num2;
          } else if (foit == true) {
            result = num1 * num2;
          } else if (moin == true) {
            result = num1 - num2;
          } else if (plus == true) {
            result = num1 + num2;
          }
        }
        reset = false;
      }

      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '0';
      num2 = num.parse(nums2);
    }
  }
}

void plusf() {
  if (text.isNotEmpty) {
    divis = false;
    foit = false;
    moin = false;
    plus = true;
    textsize();
    operationsl.add('+');
    if (nums1tol == false) {
      numl.add(nums1);
      nums1tol = true;
    }
    if (text.split('').last.contains(RegExp(r'[\+\-=x/.]'))) {
      text = text.replaceRange(text.length - 1, null, '+');
      textre = text;
    } else {
      text += '+';
      textre = text;
    }
    operation = true;
    if (past == true) {
      if (num2 != 0) {
        if (divis == true) {
          result = num1 / num2;
        } else if (foit == true) {
          result = num1 * num2;
        } else if (moin == true) {
          result = num1 - num2;
        } else if (plus == true) {
          result = num1 + num2;
        }
      }
      if (reset == true) {
        num1 = num.parse(nums1);
        num2 = num.parse(nums2);
        if (num2 != 0) {
          if (divis == true) {
            result = num1 / num2;
          } else if (foit == true) {
            result = num1 * num2;
          } else if (moin == true) {
            result = num1 - num2;
          } else if (plus == true) {
            result = num1 + num2;
          }
        }
        reset = false;
      }
      numl.add(nums2);
      num1 = result;
      newvalue = true;
      nums2 = '0';
      num2 = num.parse(nums2);
    }
  }
}

void egalef() {
  if (text.isNotEmpty) {
    if (nums1tol == false) {
      nums1tol = true;
    }
    if (text.contains(RegExp(r'[\+\-=x/]'))) {
      if (divis == true) {
        result = num1 / num2;
      } else if (foit == true) {
        if (zeron == true) {
          result = num1 * num2;
        }
      } else if (moin == true) {
        result = num1 - num2;
      } else if (plus == true) {
        result = num1 + num2;
      }
      egale = false;
    } else {
      result = num.parse(text);
    }
  }
  if (result.toString().length > 16) {
    resultfontsize = 35;
  }
  if (result.toString().length > 19) {
    resultfontsize = 30;
  }
  if (reset == true) {
    num1 = num.parse(nums1);
    if (nums2.isNotEmpty) {
      num2 = num.parse(nums2);
    }
    if (divis == true) {
      result = num1 / num2;
    } else if (foit == true) {
      result = num1 * num2;
    } else if (moin == true) {
      result = num1 - num2;
    } else if (plus == true) {
      result = num1 + num2;
    }
    reset = false;
  }
  if (text.isNotEmpty) {
    if (text.split('').last.contains('.')) {
      text = text.replaceRange(text.length - 1, null, '');
    }
    numl.add(nums2);
    print(numl);
    print(operationsl);
  }
}
