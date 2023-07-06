abstract mixin class SnickersOriginal {
  bool hasHazelnut = true;
  bool hasRice = false;
  bool hasAlmond = false;
}

abstract class SnickersCrisp {
  bool hasHazelnut = true;
  bool hasRice = true;
  bool hasAlmond = false;
}

class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBar extends ChocolateBar with SnickersOriginal {
  List<String> ingredients = [];
  CandyBar() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelnut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Hazelnut');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }
  List<String> getIngredients() {
    return ingredients;
  }
}

void main() {
  var snickersOriginal = CandyBar();
  print('Snicker Original Ingredients:');
  snickersOriginal.getIngredients().forEach((ingredient) => print(ingredient));
}
