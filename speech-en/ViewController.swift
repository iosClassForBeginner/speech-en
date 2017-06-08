
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
    @IBOutlet var txtv: UITextView!
    var synthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedSpeech(_ sender: Any)
    {
        // Create contents
        let contents = AVSpeechUtterance(string: txtv.text ?? "")
        
        // Set language
        contents.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        // Speak
        synthesizer.speak(contents)
    }
}
