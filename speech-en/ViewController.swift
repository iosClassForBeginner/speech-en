//
//  ViewController.swift
//  speech-en
//
//  Created by Wataru Maeda on 2017/06/06.
//  Copyright © 2017 Wataru Maeda. All rights reserved.
//

import UIKit
import AVFoundation     // Import AVFoundation to access speech fearure

class ViewController: UIViewController
{
    @IBOutlet var speechTextView: UITextView!
    var synthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Triggered action after the button tapped
    @IBAction func speech(_ sender: Any)
    {
        // Create contents
        let contents = AVSpeechUtterance(string: speechTextView.text ?? "")
        
        // Set language
        contents.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        // Speak
        synthesizer.speak(contents)
    }
}
