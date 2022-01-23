import Foundation
class Vehicle{
var currentSpeed = 0.0
var desctiprion: String{
return "traveling at \(currentSpeed) mile per hour"
}
func makeNoise(){
print("스키퍼가 온")
}
}//base class
//Bicycle 상속받은 아이 서브 클래스
//Vehicle 상속자 부모 슈퍼클래스
class Bicycle : Vehicle{
var hasBasket = false
}
var biclycle = Bicycle()
biclycle.currentSpeed
biclycle.currentSpeed = 15.0
biclycle.currentSpeed
class Train : Vehicle {
override func makeNoise() { //수퍼 클래스의 함수를 재정의 할수 있어
super.makeNoise() //슈퍼클래스에 정의된 함수를 실행
print("chuchu")
}}
let train = Train()
train.makeNoise()
//프로퍼티를 재정의 할수 있어
class Car : Vehicle{
var gear = 1
override var desctiprion: String{
return super.desctiprion + "in gear \(gear)"
}}
var car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.desctiprion)
class Automatic: Car{
override var currentSpeed: Double{
didSet{ //currentSpeed가 변경되는 경우 실행
gear = Int(currentSpeed / 10 ) + 1
}}}

let automatic = Automatic()
automatic.currentSpeed = 35
print("AutomacitCar: \(automatic.desctiprion)")
