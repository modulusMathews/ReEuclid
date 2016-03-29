import Foundation

public
struct EuclidState: Euclid, StateType {
    public let resolution: Int
    public var density: Int
    public var phase: Int
}

public
extension EuclidState {
    public
    init (resolution: Int) {
        self.resolution = resolution
        self.density = 0
        self.phase = 0
    }
}