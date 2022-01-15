//
//  DetailGardianController.swift
//  Guardians Of The Galaxy
//
//  Created by Youssef Bhl on 15/01/2022.
//

import UIKit

class DetailGardianController: UIViewController {
    
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var imageProfile: RoundBorderImage!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    var gardian: Gardian?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let g = gardian else { return }
        imageBackground.image = UIImage(named: g.imagePath)
        imageProfile.image = UIImage(named: g.imagePath)
        nameLbl.text = g.name
        descLbl.text = g.desc
        likeImage.image = gardian?.likeStatus == .Liked ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        
        likeImage.isUserInteractionEnabled = true
        likeImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(likeUnlike)))
    }
    
    @objc func likeUnlike() {
        if gardian?.likeStatus == .Liked {
            unlike()
        } else {
            like()
        }
    }
    
    private func unlike() {
        likeImage.tintColor = .secondaryLabel
        likeImage.image = UIImage(systemName: "heart")
        gardian?.likeStatus = .notLiked
    }
    
    private func like() {
        likeImage.tintColor = .systemRed
        likeImage.image = UIImage(systemName: "heart.fill")
        gardian?.likeStatus = .Liked
    }
    
}
