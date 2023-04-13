//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Cristi Sandu on 13.04.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo();
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "RMA", ofType: "mp4") else {
            debugPrint("RMA.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
