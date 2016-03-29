import Cocoa

// Utility Presenter
class EuclidPresenter: StoreSubscriber {
    func newState(state: EuclidState) {
        print("Resolution: \(state.resolution)")
        print("Density: \(state.density)")
        print("Phase: \(state.phase)")
        print("Vector: \(state.vector)")
        print()
    }
}

let euclidPresenter = EuclidPresenter()

// Initialize Application
let resolution = 12

let euclidState = EuclidState(resolution: resolution)
let euclidReducer = EuclidReducer(defaultState: euclidState)
let euclidStore = Store(reducer: euclidReducer, state: euclidState)

euclidStore.subscribe(euclidPresenter)

// Perform Actions Below
euclidStore.dispatch(changeDensity(7)) // Example





