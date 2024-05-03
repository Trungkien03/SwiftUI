//
//  AVPlayer+Extension.swift
//  Scrumdinger
//
//  Created by Trung Kiên Nguyễn on 3/5/24.
//

import AVFoundation
import Foundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
