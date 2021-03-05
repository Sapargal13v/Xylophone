//
//  ViewController.swift
//  Xylophone
//
//  Created by Hjaseyyh Grursht on 05.03.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playerSound(soundName: sender.currentTitle!)
    }
    
    func playerSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }

}

