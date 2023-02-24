import 'dart:io';

void main(){


  print("Hello, enter two numbers");
  int? x= int.parse(stdin.readLineSync()!);
  int? y= int.parse(stdin.readLineSync()!);
  print("choose which operation to perform");
  int choice = int.parse(stdin.readLineSync()!);

  for(int i=0; i<5; i++){
    print("hello");
  }

}

int sum(int a, int b){
  return a+b;
}
int minus(int a, int b){
  return a-b;

}

double divison(int a, int b){
  return a/b;
}

int multiply(int a, int b){
  return a*b;


}

