//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Maxim Mitin on 21.09.21.
//

import AVKit
import Foundation

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileformat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileformat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
