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
