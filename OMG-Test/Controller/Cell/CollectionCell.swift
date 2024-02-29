//
//  CollectionCell.swift
//  OMG-Test
//
//  Created by Александр Горелкин on 29.02.2024.
//

import UIKit
final class CollectionCell: UICollectionViewCell {
    static let identifier = String(describing: CollectionCell.self)
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.1, delay: 0, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
                self.transform = self.isHighlighted ? .init(scaleX: 0.8, y: 0.8) : .identity
            }, completion: nil)
        }
    }
    private lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15)
        label.text = "\(Int.random(in: 0...20))"
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(numberLabel)
        numberLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        numberLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        backgroundColor = .white
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
