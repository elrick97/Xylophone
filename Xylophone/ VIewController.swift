//
//  ViewController.swift
//  Xylophone
//
//  Created by Ricardo Ramirez on 27/01/2016.
//

import UIKit
import AVFoundation

    var red: Int = 0
    var or: Int = 0
    var yell: Int = 0
    var green: Int = 0
    var aqua: Int = 0
    var blue: Int = 0
    var purp: Int = 0

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    var tagNotePressed : String = ""
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var redPressed: UILabel!
    @IBOutlet weak var orangePressed: UILabel!
    @IBOutlet weak var yellowPressed: UILabel!
    @IBOutlet weak var lgreenPressed: UILabel!
    @IBOutlet weak var aquaPressed: UILabel!
    @IBOutlet weak var bluePressed: UILabel!
    @IBOutlet weak var purplePressed: UILabel!
    

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        tagNotePressed = soundArray[sender.tag-1]
        
        if sender.tag-1 == 0 {
            red = red + 1
            redPressed.text = "\(red)"
        }
        else if sender.tag-1 == 1 {
            or = or + 1
            orangePressed.text = "\(or)"
        } else if sender.tag-1 == 2 {
            yell = yell + 1
            yellowPressed.text = "\(yell)"
        } else if sender.tag-1 == 3 {
            green  = green + 1
            lgreenPressed.text = "\(green)"
        } else if sender.tag-1 == 4 {
            aqua = aqua + 1
            aquaPressed.text = "\(aqua)"
        } else if sender.tag-1 == 5 {
            blue = blue + 1
            bluePressed.text = "\(blue)"
        } else if sender.tag-1 == 6 {
            purp = purp + 1
            purplePressed.text = "\(purp)"
        }
        playSound()
    }
    
    func playSound () {
        
        let soundURL = Bundle.main.url(forResource: tagNotePressed, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        } catch {
            print(error)
        }
        audioPlayer?.play()
    }

}

