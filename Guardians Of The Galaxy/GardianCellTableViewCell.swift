//
//  GardianCellTableViewCell.swift
//  Guardians Of The Galaxy
//
//  Created by Youssef Bhl on 15/01/2022.
//

import UIKit

class GardianCellTableViewCell: UITableViewCell {

    static let identifier = "GardianCellTableViewCell"
    
    @IBOutlet var imageV: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var desc: UILabel!
    @IBOutlet var like: UIImageView!
    
    func setupCell(imageRef : String, name : String, desc : String, like : Like) {
        
        imageV.image = UIImage(named: imageRef)
        self.name.text = name
        self.desc.text = desc
        
        switch like {
        case .Liked :
            self.like.image = UIImage(systemName: "heart.fill")!
            self.like.tintColor = .systemRed
        case .notLiked :
            self.like.image = UIImage(systemName: "heart")
            self.like.tintColor = .secondaryLabel
        }
    
    
    
    }
    
}
