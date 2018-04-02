//
//  PhotoViewController.swift
//  FlickrClient
//
//  Created by Georgy Dyagilev on 02/04/2018.
//  Copyright © 2018 Dyagilev developer. All rights reserved.
//

import UIKit
import Kingfisher

class PhotoViewController: UIViewController {
    
    var photo: Photo?
    
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photo = photo, let url = URL(string: photo.bigImageURL!) {
            photoImageView.kf.setImage(with: url)
        }
    }
}
