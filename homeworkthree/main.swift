import Foundation



print("Напишите город")


func bishkek1(){
    print("weather in Bishkek today is 26 ")
}
func bishkek2(){
    print("weather in Bishkek tomorrow is 27 ")
}
func bishkek3(){
    print("weather in Bishkek after 2 days is 26")
}

    
func issykkul1(){
        print("weather in issykkul today is 18")
}
func issykkul2(){
        print("weather in issykkul tomorrow is 19")
}
func issykkul3(){
        print("weather in issykkul after 2 days is 18")
}



func batken1(){
            print("weather in batken today is 28")
    }
func batken2(){
            print("weather in batken tomorrow is 26")
    }
func batken3(){
            print("weather in batken after 2 days is 26")
    }


func osh1(){
            print("weather in osh today is 27")
    }
func osh2(){
            print("weather in osh tomorrow is 28")
    }
func osh3(){
            print("weather in osh after 2 days is 29")
    }



func naryn1(){
            print("weather in naryn today is 22")
    }
func naryn2(){
            print("weather in naryn tomorrow is 23")
    }
func naryn3(){
            print("weather in naryn after 2 days is 21")
    }



func djalalabad1(){
                print("weather in djalalabad today is 27")
        }
func djalalabad2(){
                print("weather in djalalabad tomorrow is 28")
        }
func djalalabad3(){
                print("weather in djalalabad after 2 days is 29")
        }



func talas1(){
                print("weather in talas today is ")
        }
func talas2(){
                print("weather in talas tomorrow is ")
        }
func talas3(){
                print("weather in talas after 2 days is ")
        }


var city = readLine()
    
switch city {
case "Бишкек":
        bishkek1()
        bishkek2()
        bishkek3()
        
case "Иссык-Куль":
        issykkul1()
        issykkul2()
        issykkul3()
case "Баткен":
        batken1()
        batken2()
        batken3()
case "Ош":
        osh1()
        osh2()
        osh3()
case "Нарын":
        naryn1()
        naryn2()
        naryn3()
case "Джалал-Абад":
        djalalabad1()
        djalalabad2()
        djalalabad3()
case "Талас":
        talas1()
        talas2()
        talas3()
default:
    print("no info")
    
}

let milk = 60
let bread = 20
let salad = 100
let cola = 50
let cefir = 65

var total = 0.0
var discount = 0.0

var totalString = ""

func addToBag(cost: Int,name: String){
    total += Double(cost)
    totalString += "\(name) - \(cost) сом\n"
}

func getItemCost(name: String) -> Int{
    if name.lowercased() == "молоко" {
        return milk
    }else if name.lowercased() == "хлеб"{
        return bread
    }else if name.lowercased() == "салат"{
        return salad
    }else if name.lowercased() == "кока кола"{
        return cola
    }else if name.lowercased() == "кефир"{
        return cefir
    }else {
        print("такого продукта нет")
        print("Введите снова")
        let product = readLine()!
        return getItemCost(name: product)
    }
}

print("Введите название продукта.В нашем ассортименте есть: Банан, Ананас, Яблоко, Лимон")

let product = readLine()!
addToBag(cost: getItemCost(name: product), name: product)
let product2 = readLine()!
addToBag(cost: getItemCost(name: product2), name: product2)
let product3 = readLine()!
addToBag(cost: getItemCost(name: product3), name: product3)
let product4 = readLine()!
addToBag(cost: getItemCost(name: product4), name: product4)
let product5 = readLine()!
addToBag(cost: getItemCost(name: product5), name: product5)

discount = total * 0.05

let additionalString = "\(total) сом. Скидка =\(discount)\n Общая сумма = \(total - discount)"
print(total - discount)

