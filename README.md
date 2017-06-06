# Code Together: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/resources/sample.png" /></div>

  Thank you for visiting our account. We are going to make a speech app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
We are providing free hands-on on a monthly basis

https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Do you need a tutor?
We also hold face-to-face or group lesson for individual interested in making iOS app themselves

http://ios-class-for-beginner.esy.es/

## Development Environment
  Xcode 8.3.2 / Swift 3

## Full procedure

#### 0, Create your project

> 0-1. Open Xcode 

> 0-2. Select "Create a new Xcode project"

> 0-3. Select "Single View Application" and then tap "Next"

> 0-4. Fill "Product name" and then tap "Next"

> 0-5. Select the place for saving your project and then tap "Create"

#### 1, Collect resources → Drag & Drop your resources into your project
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/0.png" /></div>
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/0.gif" /></div>

#### 2, Design app
> 2-1. Drap & Drop "UITableView" from UI components
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/1.gif" /></div>

> 2-2. Resize UITableView. After that, set "Autoresizing" for adjusting frame depending on devices
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/2.gif" /></div>

> 2-3. Drap & Drop "UITableViewCell" from UI components
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/3.gif" /></div>

> 2-4. After added "UIImageView", "UILabel" on the cell, do the same process of 2-2.
  
  ★  It might be easy to <a href="https://github.com/iosClassForBeginner/speech-en/Resources/4.png">change tableView style</a> to "Grouped"

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/4.gif" /></div>
  
  Your storyboard may look like this
  
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/5.png" /></div>
  
#### 3, Add a new file
  
  > 3-1. Add a file subclassed of "UITableViewCell"
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/5.gif" /></div>

  > 3-2. UITableViewCell
  
  ★  Don't forget to add "class name" and "identifer". Otherwise your app will be clashed
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/6.gif" /></div>

#### 4, Connect UI components on Storyboard to the classes
  
  ★  control + drag in storyboard to create a control segue
  
  > 4-1. Connect "UITableVIew" to your ViewController class
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/7.gif" /></div>
  
  > 4-2. Connect "UIImageView" to your UITableViewCell class
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/speech-en/Resources/8.gif" /></div>

#### 5, Add code blocks in ViewController.swift

★ It's preferable to write following code yourself. It will help you to understand code more.

```Swift  
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

```
