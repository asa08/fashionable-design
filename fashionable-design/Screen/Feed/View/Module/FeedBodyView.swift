//
//  FeedBodyView.swift
//  fashionable-design
//
//  Created by maiko morisaki on 2021/09/13.
//

import UIKit

class FeedBodyView: FeedContainer {
    
    private let baseView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        addSubview(baseView)
        
        clearTranslates()
        makeAutolayout()
    }
    
    private func makeAutolayout() {
        NSLayoutConstraint.activate([
            baseView.heightAnchor.constraint(equalToConstant: 200),
            baseView.topAnchor.constraint(equalTo: topAnchor),
            baseView.leadingAnchor.constraint(equalTo: leadingAnchor),
            baseView.trailingAnchor.constraint(equalTo: trailingAnchor),
            baseView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
