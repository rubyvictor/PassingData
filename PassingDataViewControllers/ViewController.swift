//
//  ViewController.swift
//  PassingDataViewControllers
//
//  Created by Victor Lee on 7/8/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    var videos = [Videos]()
    let moveToDetails = "moveToDetails"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = Videos.createVideoArray()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == moveToDetails {
            let destVC = segue.destination as? DetailViewController
            destVC?.video = sender as? Videos
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        cell.videos = video
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let video = videos[indexPath.row]
        performSegue(withIdentifier: moveToDetails, sender: video)
    }


}

