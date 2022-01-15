//
//  RoundBorderImage.swift
//  Guardians Of The Galaxy
//
//  Created by Youssef Bhl on 15/01/2022.
//

import UIKit

class RoundBorderImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBorder()
        setupCorner()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupBorder()
        setupCorner()
    }
    
    func setupCorner() {
        let height = frame.height
        let width = frame.width
        let min = height <= width ? height : width
        layer.cornerRadius = min/2
    }
    
    func setupBorder() {
        layer.borderWidth = 2.5
        layer.borderColor = UIColor.systemBackground.cgColor
    }
    

}
