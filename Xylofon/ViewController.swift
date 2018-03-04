//
//  ViewController.swift
//  Xylofon
//
//  Created by Hanna Östling on 2018-03-02.
//  Copyright © 2018 Hanna Östling. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    var soundFile : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        soundFile = soundArray[sender.tag - 1]
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error)
        }
        player.play()
    }
    
}

