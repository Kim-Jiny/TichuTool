//
//  WebViewController.swift
//  TichuTool
//
//  Created by Jiny on 11/22/23.
//

import Foundation
import UIKit
import WebKit
import SnapKit

class WebViewController: UIViewController {
    var coordinator: WebPageCoordinator?
    lazy var webView: WKWebView = {
        let webV = WKWebView(frame: .zero)
        return webV
    }() // 또는 WKWebView 사용
    
    var viewModel: WebViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupWebView()
    }
    
    init(viewModel: WebViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.view.addSubview(webView)
        
        webView.snp.makeConstraints { maker in
            maker.top.bottom.left.right.equalToSuperview()
        }
    }
    
    func setupWebView() {
        let url = viewModel.webViewModel.url
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
}
