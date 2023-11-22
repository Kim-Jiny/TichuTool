//
//  WebPageCoordinator.swift
//  TichuTool
//
//  Created by Jiny on 11/22/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    weak var navigationController: UINavigationController?
    var webViewCoordinator: Coordinator?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func start() {
        let viewModel = MainViewModel()
        let viewController = MainVC(viewModel: viewModel)
        viewController.coordinator = self // Coordinator 참조 전달
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func startWebView() {
        webViewCoordinator = WebPageCoordinator(navigationController: self.navigationController)
        webViewCoordinator?.start()
    }
    
    func dismiss() {
        navigationController?.popViewController(animated: true)
    }
}
