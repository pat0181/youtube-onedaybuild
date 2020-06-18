//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Peter on 2020-05-21.
//  Copyright © 2020 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var tableview: UITableView!

    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set itself as the datasource andf the delegate
        tableview.dataSource = self
        tableview.delegate = self
        
        // set itself as the delegate of the model
        model.delegate = self
        
        model.getVideos()
    }

    // MARK: - Model Delegate methods
    func videosFetched(_ videos: [Video]) {
        
        // set the returned videos to our video property
        self.videos = videos
        
        // refresh the tableview
        tableview.reloadData()
    }

    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        // configure the cell with data
        // Get the title for the video in question
        //let title = self.videos[indexPath.row].title
        let video = self.videos[indexPath.row]
        
        //cell.textLabel?.text = title
        cell.setCell(video)
        
        //return  the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

