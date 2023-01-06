/* void main() {
  if (2 > 1) {
    //print('Yes, 2 is greater than 1');
    const score = 85;
    const message = (score > 60) ? 'You Passed' : 'You failed';
    //print(message);
    const myAge = 24;
    if (myAge >= 13 && myAge < 19) {
      print('I am a teenager');
    } else {
      print('I am not a teenager');
    }

    const teen_or_not =
        (myAge >= 13 && myAge < 19) ? 'I am a teen' : 'I am not a teen';
    print(teen_or_not);
  }
  
}
*/

/*
void main() {
  int n1 = 0, n2 = 1, nextTerm;
  print(n1);
  print(n2);

  for (int i = 2; i < 16; i++) {
    nextTerm = n1 + n2;
    print('$nextTerm');
    n1 = n2;
    n2 = nextTerm;
  }
}
*/

/*
void main() {
  var count = 10;
  for (var i = 10; i == 0; i--) {
    count -= i;
  }
}
*/

/*
void main() {
  int input = 12;
  final output = Compliment(input);
  print(output);
}

String Compliment(int number) {
  return '$number is a very nice number';
}

*/
import 'user.dart';
import 'email.dart';

void main() {
  helloPersonAndPet('John', 'jonny');
  print(fullName('Rodgers', 'Meroka', 'Mr.'));
  print(multiply(2, 3));
  final user = User(id: 42, name: 'Ray');
  print(user);
  final vicki = User(id: 24, name: 'Vicki');
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  final jb = User(id: 1, name: 'JB Lorenzo');
  print(jb);

  final email = Email();
  email.value = 'ray@gmail.com';
  final emailString = email.value;

  final password = Password()..value = '23Em';
  print(password);
  print(password.isValid());
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

bool withinTolerance({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}

final multiply = (int a, int b) => a * b;

// Create a class called Password and give it a string property called value.
class Password {
  final String value = '';

  String isValid() {
    if (value.length > 8) {
      return 'Password is Valid';
    } else {
      return 'Password is not Valid!';
    }
  }

  @override
  String toString() {
    return 'Password(Password: $value)';
  }
}

//Refactoring email class
//using it as  a public class
class Email {
  var value = '';
}

////only a getter not a setter

class Email_gettter {
  Email(this.value);
  final value;
}


//refactoring user class

