//
//  ViewController.swift
//  22_04_24_AudioPlayerDemo
//
//  Created by Vishal Jagtap on 21/03/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var avPlayer : AVPlayer?
    var btnPlay : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtnThroughCode()
    }

    func createBtnThroughCode(){
        btnPlay = UIButton(frame: CGRect(
            x: 30,
            y: 150,
            width: 100,
            height: 50))
        btnPlay.setTitle("Play", for: .normal)
        btnPlay.backgroundColor = .lightGray
        btnPlay.addTarget(self,
                          action: #selector(playAudio),
                          for: .touchUpInside)
        
        self.view.addSubview(btnPlay)
    }
    
    @objc func playAudio(){
        print("clicked")
        let url = Bundle.main.url(forResource: "audio_file", withExtension: ".mp3")
        avPlayer = AVPlayer(url: url!)
        avPlayer!.play()
    }
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        print(sender.tag)
        print(sender.titleLabel?.text!)
    }
}
