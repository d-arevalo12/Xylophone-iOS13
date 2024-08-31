//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  var player: AVAudioPlayer!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func keyCPressed(_ sender: UIButton) {
    playSound(keyName: "C")
  }

  @IBAction func keyEPressed(_ sender: UIButton) {
    playSound(keyName: "E")
  }

  @IBAction func keyDPressed(_ sender: UIButton) {
    playSound(keyName: "D")
  }

  @IBAction func keyFPressed(_ sender: UIButton) {
    playSound(keyName: "F")
  }

  @IBAction func keyGPressed(_ sender: UIButton) {
    playSound(keyName: "G")
  }

  @IBAction func keyAPressed(_ sender: UIButton) {
    playSound(keyName: "A")
  }

  @IBAction func keyBPressed(_ sender: UIButton) {
    playSound(keyName: "B")
  }

  func playSound(keyName: String) {
    let url = Bundle.main.url(forResource: keyName, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
  }
}

