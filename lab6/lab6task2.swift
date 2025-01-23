import Foundation

// 1. Структура для точки (як в завданні №1)
struct Point {
    private(set) var x: Double
    private(set) var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    init(radius: Double, angle: Double, isPolar: Bool) {
        if isPolar {
            self.x = radius * cos(angle)
            self.y = radius * sin(angle)
        } else {
            self.x = radius
            self.y = angle
        }
    }
    
    static func distance(from p1: Point, to p2: Point) -> Double {
        return sqrt(pow(p2.x - p1.x, 2) + pow(p2.y - p1.y, 2))
    }
}

// 2. Перерахування для визначення типу фігури
enum ShapeType {
    case point
    case line
    case triangle
    case quadrilateral
    case polygon
}

// 3. Структура для фігури
struct Figure {
    private(set) var points: [Point]
    
    var type: ShapeType {
        switch points.count {
        case 1:
            return .point
        case 2:
            return .line
        case 3:
            return .triangle
        case 4:
            return .quadrilateral
        default:
            return .polygon
        }
    }
    
    init(points: [Point]) {
        self.points = points
    }
    
    init(points: Point...) {
        self.points = points
    }
}

//  4. Індексатор для доступу до точки
extension Figure {
    subscript(index: Int) -> Point {
        return points[index]
    }
}

// 5. Розширення для обчислення площі та периметра
extension Figure {
    
    func area() -> Double? {
        switch type {
        case .triangle:
            return triangleArea()
        case .quadrilateral:
            return quadrilateralArea()
        case .polygon:
            return polygonArea()
        default:
            return nil
        }
    }
    
    func perimeter() -> Double {
        var perimeter: Double = 0.0
        for i in 0..<points.count {
            let nextIndex = (i + 1) % points.count
            perimeter += Point.distance(from: points[i], to: points[nextIndex])
        }
        return perimeter
    }
    
    private func triangleArea() -> Double {
        guard points.count == 3 else { return 0.0 }
        let a = Point.distance(from: points[0], to: points[1])
        let b = Point.distance(from: points[1], to: points[2])
        let c = Point.distance(from: points[2], to: points[0])
        let s = (a + b + c) / 2
        return sqrt(s * (s - a) * (s - b) * (s - c))
    }
    
    private func quadrilateralArea() -> Double {
        guard points.count == 4 else { return 0.0 }
        let a = Point.distance(from: points[0], to: points[1])
        let b = Point.distance(from: points[1], to: points[2])
        let c = Point.distance(from: points[2], to: points[3])
        let d = Point.distance(from: points[3], to: points[0])
        let diagonal1 = Point.distance(from: points[0], to: points[2])
        let diagonal2 = Point.distance(from: points[1], to: points[3])
        
        let s1 = (a + b + diagonal1) / 2
        let s2 = (c + d + diagonal2) / 2
        
        let area1 = sqrt(s1 * (s1 - a) * (s1 - b) * (s1 - diagonal1))
        let area2 = sqrt(s2 * (s2 - c) * (s2 - d) * (s2 - diagonal2))
        
        return area1 + area2
    }
    
    private func polygonArea() -> Double {
        var area = 0.0
        for i in 0..<points.count {
            let j = (i + 1) % points.count
            area += points[i].x * points[j].y
            area -= points[i].y * points[j].x
        }
        return abs(area) / 2.0
    }
}

// 6. Властивості для площі та периметра
extension Figure {
    
    var areaValue: Double? {
        return area()
    }
    
    var perimeterValue: Double {
        return perimeter()
    }
}

// Тестування
let point1 = Point(x: 0, y: 0)
let point2 = Point(x: 3, y: 0)
let point3 = Point(x: 3, y: 4)

let figure = Figure(points: point1, point2, point3)
print("Тип фігури: \(figure.type)")
print("Периметр: \(figure.perimeterValue)") 
print("Площа: \(figure.areaValue ?? 0.0)") 
