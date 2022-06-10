//2
var f1 = deck('2C', 2);
var f2 = deck('2D', 2);
var f3 = deck('2H', 2);
var f4 = deck('2S', 2);
//3
var f5 = deck('3C', 3);
var f6 = deck('3D', 3);
var f7 = deck('3H', 3);
var f8 = deck('3S', 3);
//4
var f9 = deck('4C', 4);
var f10 = deck('4D', 4);
var f11 = deck('4H', 4);
var f12 = deck('4S', 4);
//5
var f13 = deck('5C', 5);
var f14 = deck('5D', 5);
var f15 = deck('5H', 5);
var f16 = deck('5S', 5);
//6
var f17 = deck('6C', 6);
var f18 = deck('6D', 6);
var f19 = deck('6H', 6);
var f20 = deck('6S', 6);
//7
var f21 = deck('7C', 7);
var f22 = deck('7D', 7);
var f23 = deck('7H', 7);
var f24 = deck('7S', 7);
//8
var f25 = deck('8C', 8);
var f26 = deck('8D', 8);
var f27 = deck('8H', 8);
var f28 = deck('8S', 8);
//9
var f29 = deck('9C', 9);
var f30 = deck('9D', 9);
var f31 = deck('9H', 9);
var f32 = deck('9S', 9);
//10
var f33 = deck('10C', 10);
var f34 = deck('10D', 10);
var f35 = deck('10H', 10);
var f36 = deck('10S', 10);
//1
var f37 = deck('AC', 1);
var f38 = deck('AD', 1);
var f39 = deck('AH', 1);
var f40 = deck('AS', 1);
//11
var f41 = deck('JC', 11);
var f42 = deck('JD', 11);
var f43 = deck('JH', 11);
var f44 = deck('JS', 11);
//12
var f45 = deck('QC', 12);
var f46 = deck('QD', 12);
var f47 = deck('QH', 12);
var f48 = deck('QS', 12);
//13
var f49 = deck('KC', 13);
var f50 = deck('KD', 13);
var f51 = deck('KH', 13);
var f52 = deck('KS', 13);

class deck {
  String face;
  int val;

  deck(this.face, this.val);

  Map<String, dynamic> decks() {
    return {"face": face, "val": val};
  }
}

class cardname {}
