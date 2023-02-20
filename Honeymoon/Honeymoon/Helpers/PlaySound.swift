//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 2/2/23.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Could not find and play the sound file")
        }
    } else {
        print("Something went wrong in playSound: Unknown Error")
    }
}

