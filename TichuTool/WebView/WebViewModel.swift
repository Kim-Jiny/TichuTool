//
//  WebViewModel.swift
//  TichuTool
//
//  Created by Jiny on 11/22/23.
//

import Foundation
class WebViewModel {
    var webViewModel: WebModel
    
    init(url: URL) {
        self.webViewModel = WebModel(url: url)
    }
}
