//
//  ViewController.swift
//  swift-2048
//
//  Created by Sandun Chathuranga on 5/14/17.
//  Copyright © 2017 Kasun Chathuranga. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var backGroundPlayer = AVAudioPlayer()
                            
  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
    
    //play background music
    
    func playBackMusic (fileNamed: String) {
        
        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
        guard let newUrl = url else {
            print("Couldnt find filed called \(fileNamed)")
            return
        }
        
        do {
            backGroundPlayer = try AVAudioPlayer(contentsOf: newUrl)
            backGroundPlayer.numberOfLoops = -1
            backGroundPlayer.prepareToPlay()
            backGroundPlayer.play()
        }
        catch let error as NSError {
            print(error.description)
        }
    }
    
    
//Easy
  @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 6, threshold: 8)
    self.present(game, animated: true, completion: nil)
    playBackMusic(fileNamed: "back.mp3")
  }
//Medium
    
@IBAction func startGameButtonTapped2(_ sender: UIButton) {
    let game = NumberTileGameViewController(dimension: 5, threshold: 8)
    self.present(game, animated: true, completion: nil)
    playBackMusic(fileNamed: "back.mp3")
    }
    
//Hard
@IBAction func startGameButtonTapped3(_ sender: UIButton) {
        let game = NumberTileGameViewController(dimension: 4, threshold: 8)
        self.present(game, animated: true, completion: nil)
    playBackMusic(fileNamed: "back.mp3")
    }
    
 
////background
//func playBackMusic (fileNamed: String){
//        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
//        guard let newUrl = url else {
//        
//        print("Couldnt find filed called \(fileNamed)")
//        return
//        }
//        do {
//            backGroundPlayer = try AVAudioPlayer(contentsOf: newUrl)
//            backGroundPlayer.numberOfLoops = -1
//            backGroundPlayer.prepareToPlay()
//            backGroundPlayer.play()
//            }
//        catch let error as NSError{
//        print(error.description)
//        }
//    }
//
//@IBAction func PlayMusic(_ sender: UIButton) {
//    
//    playBackMusic(fileNamed: "back.mp3")
//    
//    }
    
    

   
    
    
    @IBAction func playMusic(sender: UIButton) {
        playBackMusic(fileNamed: "background.mp3")
    }



    
}

