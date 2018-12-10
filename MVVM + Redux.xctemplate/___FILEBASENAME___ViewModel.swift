//___FILEHEADER___

import RxSwift

extension ___VARIABLE_productName___Namespace {

    final class ViewModel {

        struct Inputs {

        }

        struct Outputs {
            let props: Observable<ViewController.Props>
        }

        init() {

        }

        func makeOutputs(from inputs: Inputs) -> Outputs {

            let initialState = State()
            let store = Store(
                initialState: initialState,
                reducer: reduce,
                middlewares: []
            )

            let state = store.state
                .share(replay: 1, scope: .whileConnected)

            let actionCreator = ActionCreator(
                inputs: inputs,
                state: state
            )

            let stateChanges = actionCreator.actions
                .do(onNext: store.dispatch)

            let props = state.map(makeProps)

            return Outputs(
                props: props
            )
        }
    }

}
