abstract class Command{
  num execute();
}

class Addition extends Command{
  num a;
  num b;

  Addition(this.a, this.b);

  @override
  num execute(){
    return a + b;
  }
}

class Subtraction extends Command{
  num a;
  num b;

  Subtraction(this.a, this.b);

  @override
  num execute(){
    return a - b;
  }
}

class Divison extends Command{
  num a;
  num b;

  Divison(this.a, this.b);

  @override
  num execute(){
    return a / b;
  }
}

class Multiplication extends Command{
  num a;
  num b;

  Multiplication(this.a, this.b);

  @override
  num execute(){
    return a * b;
  }
}