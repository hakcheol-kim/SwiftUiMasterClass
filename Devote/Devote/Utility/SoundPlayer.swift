//
//  File.swift
//  SoundPlayer
//
//  Created by 김학철 on 2021/06/17.
//

import Foundation
import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer?
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch {
            print("Could not find and pay the sound path.")
        }
        
    }
}
