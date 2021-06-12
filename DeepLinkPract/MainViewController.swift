//
//  MainViewController.swift
//  DeepLinkPract
//
//  Created by Fuh chang Loi on 12/6/21.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    lazy var mainView: MainView = {
       let view = MainView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
    }
}

extension MainViewController {
    func handleDeepLink(_ deepLink: DeepLink) {
        switch deepLink {
            case .home:
                mainView.label.text = "home testing123"
            case .scan:
                mainView.label.text = "scan testing123"
        case .empty:
            mainView.label.text = "empty testing123"
        }
        mainView.reloadInputViews()
    }
}

