//hesap makinesi
//değişkenler(let -> immutable, var -> mutable)
//operatörler
//async methodu
//if condition

//canister =>akıllı sözleşme

actor calculator{

  var cell : Int = 0;

  // toplama
  //fonksiyon
  public func add(n : Int) : async Int {
    cell += n;
    cell
    //(Debug.print(debug_show(cell));)
  };

  // çıkarma
  public func sub(n : Int) : async Int {
    cell -= n;
    cell
  };

  // çarpma
  public func mul(n : Int) : async Int {
    cell *= n;
    cell
  };

  // bölme
  public func div(n : Int) : async ?Int {
    if (n == 0) {
     
      null
    } else {
      cell /= n;
      ?cell
    };
  };

  // temizleme
  public func clearall() : async () {
    cell := 0;
  };
};
