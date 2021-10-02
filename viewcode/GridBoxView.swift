//
//  GridBoxView.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 01/10/21.
//

import Foundation
import UIKit
import SnapKit


final class GridBoxView: UIView {
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .gray
        return view
    }()
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GridBoxView: CodeView {
    func buildViewHierarchy() {
        addSubview(imageView)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        textContainer.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(8)
        }
    }
    func setupAdditionalConfiguration() {
        
    }
}
