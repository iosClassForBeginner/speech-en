# Code Together: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/sample.png" width="50%" height="50%"/></div>  

  Thank you for visiting our account. We are going to make a speech app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
We are providing free hands-on on a monthly basis

https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Do you need a tutor?
We also hold face-to-face or group lesson for individual interested in making iOS app themselves

http://ios-class-for-beginner.esy.es/

## Development Environment
  Xcode 8.3.2 / Swift 3

# Full procedure
## 0, Create your project

> 0-1. Open Xcode  
> 0-2. Select "Create a new Xcode project"  
> 0-3. Select "Single View Application" and then tap "Next"  
> 0-4. Fill "Product name" and then tap "Next"  
> 0-5. Select the place for saving your project and then tap "Create"  

## 1, Collect resource

> 1-1. Drop your icon into your "Assets.xcassets"
<details>
<summary>View Gif</summary>
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/0.gif" /></div>
</details>
・<a href="http://www.flaticon.com/free-icon/microphone_444308#term=microphone&page=1&position=65">Microphone icon</a>

## 2, Design your app
#### 🗂 Main.storyboard

> 2-1. Drap & Drop "UITextView"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/1-1.gif" /></div></details>

> 2-2. Resize "UITextView". After that, set "Autoresizing" for adjusting frame depending on devices
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/1-2.gif" /></div></details>

> 2-3. Replace text of "UITextView"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/1-3.gif" /></div></details>

> 2-4. Drap & Drop "UIButton"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/2-1.gif" /></div></details>

> 2-5. Set "UIButton" image
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/2-2.gif" /></div></details>

> 2-6. Resize "UIButton". Set "Autoresizing"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/2-3.gif" /></div></details>


## 3, Connect UI components to the ViewController
#### 🗂 Main.storyboard → ViewController.swift  
  ★  control + drag in storyboard to create a control segue
  
> 3-1. Connect "UITextView"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/3-1.gif" /></div></details>

> 3-2. Add action of "UIButton"
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/blob/master/resources/3-2.gif" /></div></details>

## 4, Add code blocks in ViewController.swift
#### 🗂 ViewController.swift  
> ★ It's preferable to write following code yourself. It will help you to understand code more.

```Swift  
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
```
