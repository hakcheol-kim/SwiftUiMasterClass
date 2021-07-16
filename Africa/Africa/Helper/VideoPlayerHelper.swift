//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by 김학철 on 2021/06/10.
//

import Foundation
import AVKit

var videoPlyer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) ->AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlyer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlyer?.play()
    }
    return videoPlyer!
}
