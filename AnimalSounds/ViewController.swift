//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Gamalliel Sharon on 05/01/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        playSound(soundTitle: sender.currentTitle!)
    }
    
    func playSound(soundTitle: String) {
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

