//
//  Videos.swift
//  PassingDataViewControllers
//
//  Created by Victor Lee on 7/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit
import Foundation

class Videos {
    
    var image: UIImage
    var url: String
    var title: String
    var description: String
    
    
    init(image: UIImage,url:String,title:String,description:String) {
        self.image = image
        self.url = url
        self.title = title
        self.description = description
    }
    
    class func createVideoArray() -> [Videos] {
        var videos = [Videos]()
        
        let video1 = Videos(image: #imageLiteral(resourceName: "video1"), url: "https://www.youtube.com/watch?v=6t3ue7dX5WI", title: "How much money IOS dev makes", description: "Sensei Brian reveals secrets to IOS industry")
        
        let video2 = Videos(image: #imageLiteral(resourceName: "video2"), url: "https://www.youtube.com/watch?v=SBVVtvQ-HBE", title: "Top Five programming languages", description: "Learn about the top 5 programming languages according to Brian")
        
        let video3 = Videos(image: #imageLiteral(resourceName: "video3"), url: "https://www.youtube.com/watch?v=cSVDk-ugAQs", title: "Study comp science vs Software Engineering", description: "Brian compares and contrasts CS vs Software Engineering")
        
        let video4 = Videos(image: #imageLiteral(resourceName: "video4"), url: "https://www.youtube.com/watch?v=lWSc0wHFTXM", title: "Login page using Swift iOS and Firebase", description: "Learn the intricate skill of making a login page in Swift iOS and Firebase - By Brian")
        
        videos.append(video1)
        videos.append(video2)
        videos.append(video3)
        videos.append(video4)
        
        return videos
    }
    
}


