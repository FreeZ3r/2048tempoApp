//
//  ViewController.swift
//  swift-2048
//
//  Created by Sandun Chathuranga on 5/14/17.
//  Copyright © 2017 Kasun Chathuranga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
  override func viewDidLoad() {
    super.viewDidLoad()
  }
//Easy
  @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 6, threshold: 8)
    self.present(game, animated: true, completion: nil)
  }
//Medium
    
@IBAction func startGameButtonTapped2(_ sender: UIButton) {
    let game = NumberTileGameViewController(dimension: 5, threshold: 8)
    self.present(game, animated: true, completion: nil)
    }
    
//Hard
@IBAction func startGameButtonTapped3(_ sender: UIButton) {
        let game = NumberTileGameViewController(dimension: 4, threshold: 8)
        self.present(game, animated: true, completion: nil)
    }
    
    @IBAction func PlayMusic(_ sender: UIButton) {
    
    
    
    }


    
}

