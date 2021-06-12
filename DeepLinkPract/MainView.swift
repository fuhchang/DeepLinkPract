//
//  MainView.swift
//  DeepLinkPract
//
//  Created by Fuh chang Loi on 12/6/21.
//

import Foundation
import UIKit

class MainView: UIView {
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.backgroundColor = .blue
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        DispatchQueue.main.async {
            self.layout()
            self.addConstraints()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {
        self.addSubview(label)
    }
    
    private func addConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
