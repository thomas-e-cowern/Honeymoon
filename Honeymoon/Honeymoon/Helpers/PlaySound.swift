//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 2/2/23.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    print("Inside playSound")
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            print("Inside do.....")
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Could not find and play the sound file")
        }
    } else {
        print("Something went wrong")
    }
}

