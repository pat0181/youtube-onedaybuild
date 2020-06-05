//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Peter on 2020-05-30.
//  Copyright © 2020 Peter. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAH94NtR07BB3tuOXThrduSaObJGfgc5MA"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
