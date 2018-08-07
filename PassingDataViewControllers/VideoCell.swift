//
//  VideoCell.swift
//  PassingDataViewControllers
//
//  Created by Victor Lee on 7/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import Foundation
import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoImageView: UIImageView!
    
    var videos: Videos? {
        didSet {
            guard let image = videos?.image else { return }
            videoImageView.image = image
            
            guard let title = videos?.title else { return }
            videoTitle.text = title
        
        }
    }
    
}
