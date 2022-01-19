import UIKit
import Foundation

//Hacer una lista de figuras geometricas, y que por polimorfismo todas calculen su área, es decir, el mismo método en todas las clases debe ser el mismo que la clase padre, pero en la implementación cada hijo reimplementa los métodos, ejemplos de figuras: Circulos, cuadrados, rectángulos, triángulos, sacar un promedio del area de todas las figuras y mostrarla. Al menos unas 3-4 figuras distintas y

protocol FiguraGeometrica {
    func calcularArea() -> Double
}

class Circulo: FiguraGeometrica {
    var radio: Double
    
    init(radio: Double) {
        self.radio = radio
    }
    
    func calcularArea() -> Double {
        return 3.14 * pow(radio, 2)
    }
}

class Cuadrado: FiguraGeometrica {
    var lado: Double
    
    init(lado: Double) {
        self.lado = lado
    }
    
    func calcularArea() -> Double {
        return lado * lado
    }
}

class Rectangulo: FiguraGeometrica {
    var base: Double
    var altura: Double
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return base * altura
    }
}

class Triangulo: FiguraGeometrica {
    var base: Double
    var altura: Double
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return (base * altura)/2
    }
}

var circulo = Circulo(radio: 2.5)
var cuadrado = Cuadrado(lado: 2.0)
var rectangulo = Rectangulo(base: 4.0, altura: 5.0)
var triangulo = Triangulo(base: 3.0, altura: 4.0)

var arrayConFigurasGeometricas : [FiguraGeometrica] = [circulo, cuadrado, rectangulo, triangulo]

func calcularPromedioDeArea() {
    var sumadorDeAreas = 0.0
    for figura in arrayConFigurasGeometricas {
        sumadorDeAreas = figura.calcularArea() + sumadorDeAreas
    }
    let promedio = sumadorDeAreas / Double(arrayConFigurasGeometricas.count)
    print("\(promedio)")
}

calcularPromedioDeArea()
