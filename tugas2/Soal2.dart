Future<List<int>> iniFungsi(List<int> data, int pengali) async {

List<int>hasil = [];
    await Future.forEach(data, (int a) async {
      
       int b = a * pengali;


        await Future.delayed(Duration(seconds: 2));

      hasil.add(b);
    });
    return hasil;

}

main()async{

  final data = [10,20,30,40];
  final pengali = 2;
  List<int> hasilKali = await iniFungsi(data, pengali);

  print(data);
  print(hasilKali);
}