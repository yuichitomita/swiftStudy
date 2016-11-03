//
//  SoundViewController.swift
//  SwiftMousouLine
//
//  Created by Tomi on 2016/11/03.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    var audioPlayer: AVAudioPlayer!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isHidden = true
        timeLabel.isHidden = true
        
        if let url = Bundle.main.url(forResource: "callMusic", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch {
                audioPlayer = nil
            }
        }else {
            fatalError("url is nill.")
        }
        
        
    }

    @IBAction func tap(_ sender: AnyObject) {
        imageView.isHidden = false
        timeLabel.isHidden = false
    
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerCountUp), userInfo: nil, repeats: true)
        
        playBabySound()
        
    }
    
    func timerCountUp(){
        count = count + 1
        timeLabel.text = String(count)
        
    }
    
    func playBabySound(){
        if let url = Bundle.main.url(forResource: "baby", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch {
                audioPlayer = nil
            }
        }else {
            fatalError("url is nill.")
        }

    }
    
    @IBAction func deny(_ sender: AnyObject) {
        audioPlayer.stop()
        
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
