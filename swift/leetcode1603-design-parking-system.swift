class ParkingSystem {
    
    var carContainer = Array.init(repeating: 0, count: 3)
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        carContainer[0] = big
        carContainer[1] = medium
        carContainer[2] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carContainer[carType-1] > 0 {
            carContainer[carType-1] -= 1
            return true
        }
        return false
    }
}


