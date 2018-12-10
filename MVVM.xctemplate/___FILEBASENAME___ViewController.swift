//___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

extension ___VARIABLE_productName___Namespace {
    final class ViewController: UIViewController {

        private let viewModel: ViewModel

        init(viewModel: ViewModel) {
            self.viewModel = viewModel
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            bindViewModel()
        }

        private func bindViewModel() {
            let inputs = ViewModel.Inputs()

            let outputs = viewModel.makeOutputs(from: inputs)
        }
    }
}
