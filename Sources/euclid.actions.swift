import Foundation

public
enum EuclidAction: Action {
    case ChangeDensity(Int)
    case ChangePhase(Int)
}

public
let changeDensity = EuclidAction.ChangeDensity

public
let changePhase = EuclidAction.ChangePhase