//
//  DetailViewController.swift
//  PassingDataViewControllers
//
//  Created by Victor Lee on 7/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit
import SafariServices

class DetailViewController: UIViewController {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDescription: UILabel!
    
    var video: Videos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        SetupButtonUI()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.title = video?.title
        navigationItem.largeTitleDisplayMode = .automatic
    }

    fileprivate func SetupButtonUI() {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Watch", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleWatch), for: .touchUpInside)
        
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: videoDescription.bottomAnchor, constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc fileprivate func handleWatch(){
        if let video = video {
            guard let videoURL = URL(string: video.url) else {return}
            let safariVC = SFSafariViewController(url: videoURL)
            present(safariVC, animated: true, completion: nil)
        }
    }
    
    func setupUI(){
        
        guard let image = video?.image else { return }
        videoImageView.image = image
        videoImageView.contentMode = .scaleAspectFill
        videoImageView.clipsToBounds = true
        
        guard let title = video?.title else { return }
        videoTitle.text = title
        
        guard let description = video?.description else { return }
        videoDescription.text = description
    }
    
    
//  StoryBoard way of adding button:
//    @IBAction func clickWatchVideo(_ sender: Any) {
//        if let video = video {
//            guard let videoURL = URL(string: video.url) else {return}
//            let safariVC = SFSafariViewController(url: videoURL)
//            present(safariVC, animated: true, completion: nil)
//        }
//    }
}
