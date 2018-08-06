//
//  PhotoCell.swift
//  FlickrClient
//
//  Created by Georgy Dyagilev on 02/04/2018.
//  Copyright © 2018 Dyagilev developer. All rights reserved.
//

import UIKit
import Kingfisher

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var imageURL: String? {
        didSet {
            if let imageURL = imageURL, let url = URL(string: imageURL) {
                photoImageView.kf.setImage(with: url)
            } else {
                photoImageView.image = nil
                photoImageView.kf.cancelDownloadTask()
            }
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageURL = nil
    }
}
