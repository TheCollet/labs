func checkCircleMembership(circles: [(Int, Int, Int)], point: (Int, Int)) -> (Int, Int, Int)? {
    var largestCircle: (Int, Int, Int)? = nil

    for circle in circles {
        let (x0, y0, r) = circle
        let (x, y) = point
        
        let distanceSquared = (x - x0) * (x - x0) + (y - y0) * (y - y0)
        let radiusSquared = r * r
        
        if distanceSquared <= radiusSquared {
            if largestCircle == nil || r > largestCircle!.2 {
                largestCircle = circle
            }
        }
    }

    return largestCircle
}


let circles = [
    (0, 0, 5), 
    (2, 2, 4),
    (1, 1, 6)  
]

let point = (3, 3)

if let largestCircle = checkCircleMembership(circles: circles, point: point) {
    print("Найбільше коло, що містить точку: центр (\(largestCircle.0), \(largestCircle.1)), радіус \(largestCircle.2)")
} else {
    print("Жодне коло не містить точку.")
}