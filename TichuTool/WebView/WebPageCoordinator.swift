//
//  WebPageCoordinator.swift
//  TichuTool
//
//  Created by Jiny on 11/22/23.
//

import Foundation
import UIKit

class WebPageCoordinator: Coordinator {
    weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    func start() {
        let url = URL(string: "https://tichu.be")!
        let viewModel = WebViewModel(url: url)
        let viewController = WebViewController(viewModel: viewModel)
        viewController.coordinator = self // Coordinator 참조 전달
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func dismiss() {
        navigationController?.popViewController(animated: true)
    }
}
