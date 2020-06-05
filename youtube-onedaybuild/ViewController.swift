//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Peter on 2020-05-21.
//  Copyright © 2020 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

