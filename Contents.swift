import UIKit

prefix operator +++
prefix func +++(valor:Int)->Int
{
    let v = valor + valor
    return v
}

+++3
+++5

infix operator |>
func primeroMayor(s1: String, s2: String) -> Bool {
    return s2 > s1
}
let numeros = ["2","5","3","4"]
let alreves = numeros.sorted(by: primeroMayor)
print(alreves)


let cantidades = [2,3,4,5]

class Cantidad
{
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int
    {
        get {
            return valores[idx]
        }
        set (nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)
v1[3]

let dictError = [1:"A", 2:"B", 3:"C"]

func ExisteValor (idx:Int)
{
    guard let existe = dictError [idx] else{
        print("No existe")
        return
    }
    print ("Existe \(existe)")
}

ExisteValor(idx: 3)
ExisteValor(idx: 4)






