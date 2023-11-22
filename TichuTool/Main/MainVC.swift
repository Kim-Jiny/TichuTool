//
//  ViewController.swift
//  TichuTool
//
//  Created by Jiny on 11/22/23.
//

import UIKit

class MainVC: UIViewController {
    var coordinator: MainCoordinator?
    var viewModel: MainViewModel!
    
    lazy var startBtn: UIButton = {
        let btn = UIButton(frame: .zero)
        btn.setTitle("go", for: .normal)
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupAction()
        // Do any additional setup after loading the view.
    }
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.view.addSubview(startBtn)
        startBtn.snp.makeConstraints { maker in
            maker.center.equalToSuperview()
            maker.width.equalTo(100)
            maker.height.equalTo(50)
        }
    }
    
    private func setupAction() {
        startBtn.addTarget(self, action: #selector(startBtnAction), for: .touchUpInside)
    }
    
    @objc private func startBtnAction() {
        coordinator?.startWebView()
    }
}

