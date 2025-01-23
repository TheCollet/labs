import Foundation

// 1. Створення структур для точки у декартовій та полярній системах координат

// Структура для декартових координат
struct CartesianPoint {
    private(set) var x: Double
    private(set) var y: Double
    
    var point: Point {
        return Point(x: x, y: y)
    }
}

// Структура для полярних координат
struct PolarPoint {
    private(set) var radius: Double
    private(set) var angle: Double
    
    var point: Point {
        return Point(radius: radius, angle: angle)
    }
}

// Основна структура для точки, що містить декартові та полярні координати
struct Point {
    private(set) var x: Double
    private(set) var y: Double
    private(set) var radius: Double
    private(set) var angle: Double
    
    // Ініціалізатор для створення точки за допомогою декартових координат (x, y)
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        self.radius = sqrt(x * x + y * y)
        self.angle = atan2(y, x)
    }
    
    // Ініціалізатор для створення точки за допомогою полярних координат (radius, angle)
    init(radius: Double, angle: Double) {
        self.radius = radius
        self.angle = angle
        self.x = radius * cos(angle)
        self.y = radius * sin(angle)
    }
}

// 2. Ініціалізатори для декартових та полярних координат
// Ініціалізатори реалізовані у структурі Point вищезгаданими методами

// 3. Функції для зміщення точки у нову позицію
extension Point {
    
    // Зміщення точки у нову позицію за допомогою декартових координат (dx, dy)
    mutating func shiftByCartesian(dx: Double, dy: Double) {
        self.x += dx
        self.y += dy
        self.radius = sqrt(x * x + y * y)
        self.angle = atan2(y, x)
    }
    
    // Зміщення точки у нову позицію за допомогою полярних координат (dRadius, dAngle)
    mutating func shiftByPolar(dRadius: Double, dAngle: Double) {
        self.radius += dRadius
        self.angle += dAngle
        self.x = radius * cos(angle)
        self.y = radius * sin(angle)
    }
}

// 4. Функція для представлення точки як рядка
extension Point {
    // Приведення точки до рядкового представлення в залежності від системи координат
    func toString(inSystem: CoordinateSystem = .cartesian) -> String {
        switch inSystem {
        case .cartesian:
            return "Point(x: \(x), y: \(y))"
        case .polar:
            return "Point(radius: \(radius), angle: \(angle))"
        }
    }
    
    enum CoordinateSystem {
        case cartesian
        case polar
    }
}

// 5. Функція для обчислення відстані між двома точками
extension Point {
    // Обчислення відстані між двома точками
    static func distance(from point1: Point, to point2: Point) -> Double {
        let dx = point2.x - point1.x
        let dy = point2.y - point1.y
        return sqrt(dx * dx + dy * dy)
    }
}

// 6. Розширення для ініціалізації точки за допомогою користувацьких типів
struct CartesianCoordinates {
    var x: Double
    var y: Double
}

struct PolarCoordinates {
    var radius: Double
    var angle: Double
}

// Розширення для ініціалізації точки з користувацьких типів
extension Point {
    // Ініціалізатор для створення точки на основі типу CartesianCoordinates
    init(cartesian: CartesianCoordinates) {
        self.init(x: cartesian.x, y: cartesian.y)
    }
    
    // Ініціалізатор для створення точки на основі типу PolarCoordinates
    init(polar: PolarCoordinates) {
        self.init(radius: polar.radius, angle: polar.angle)
    }
}

// 7. Функції для створення точки з різних систем координат
extension Point {
    // Функція для створення точки з декартових координат
    static func createFromCartesian(x: Double, y: Double) -> Point {
        return Point(x: x, y: y)
    }
    
    // Функція для створення точки з полярних координат
    static func createFromPolar(radius: Double, angle: Double) -> Point {
        return Point(radius: radius, angle: angle)
    }
    
    // Функція для створення точки на основі користувацького типу CartesianCoordinates
    static func createFromCartesianCoordinates(cartesian: CartesianCoordinates) -> Point {
        return Point(cartesian: cartesian)
    }
    
    // Функція для створення точки на основі користувацького типу PolarCoordinates
    static func createFromPolarCoordinates(polar: PolarCoordinates) -> Point {
        return Point(polar: polar)
    }
}

// Приклад використання

// Створення точки в декартових координатах
let point1 = Point(x: 3, y: 4)
print(point1.toString())

// Створення точки в полярних координатах
let point2 = Point(radius: 5, angle: .pi / 4)
print(point2.toString(inSystem: .polar))

// Зміщення точки в декартовій системі координат
var movedPoint = point1
movedPoint.shiftByCartesian(dx: 2, dy: 3)
print(movedPoint.toString()) 

// Обчислення відстані між двома точками
let distance = Point.distance(from: point1, to: movedPoint)
print("Distance: \(distance)") 

// Створення точки за допомогою користувацьких типів
let cartesianCoord = CartesianCoordinates(x: 1, y: 1)
let polarCoord = PolarCoordinates(radius: 1.414, angle: .pi / 4)
let customPoint1 = Point(cartesian: cartesianCoord)
let customPoint2 = Point(polar: polarCoord)

print(customPoint1.toString()) 
print(customPoint2.toString(inSystem: .polar)) 
