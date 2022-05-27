//
//  PlayListViewModel.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class PlayListViewModel {let request: Request = Request()
    
    var playList: Playlist? = nil
    
    func getPlayList() async {
        let data = await request.getDataFromAPI(url: "me/playlists")
        if data != nil {
            if let decoder = try? JSONDecoder().decode(Playlist.self, from: data!) {
                DispatchQueue.main.async(execute: {
                    self.playList = decoder
                })
            }
        }
    }
    
}
