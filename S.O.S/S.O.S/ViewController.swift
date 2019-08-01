//
//  ViewController.swift
//  S.O.S
//
//  Created by student on 7/10/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.removeObject(forKey: "answerList")
        
        var answerList: [Bool] = []
        UserDefaults.standard.set(answerList, forKey: "answerList")
        
    
        let dict1 = [1:"You should stop with what you are doing and take a rest.",
                    2:"Try to meditate to clear your mind.",
                    3:"Try listening to soothing music in order to relax yourself.",
                    4:"Try to improve your time management.",
                    5:"Go outside and begin exercising in order to relax your mind and relieve yourself from your stress. ",
                    6:"Make sure you are getting a good nights rest. Make sure you sleep for at least 7 to 8 hours.",
                    7:"Make sure to avoid drugs and alcohol, they may seem to help but may actually cause future problems to occur."]
        do
        {
            let data1 = try NSKeyedArchiver.archivedData(withRootObject: dict1, requiringSecureCoding: false)
            UserDefaults.standard.set(data1, forKey: "stressDict")
        }
        catch
        {
            print("Error saving to memory")
        }
        
        let dict2 = [1:"Try to do breathing exercises in order to relax yourself and clear your mind.",
                     2:"Try calming yourself by listening to soothing music.",
                     3:"Anxiety is a future-oriented state of mind. Instead of worrying about what’s going to happen, “reel yourself back to the present.”",
                     4:"Try to just do something, move around and let your body feel that it’s in control.",
                     5:"Have something to calm you down. Use either of your senses to help you and relax.",
                     6:"You may want to write down your worries in order to let them go from your mind."]
        do
        {
            let data2 = try NSKeyedArchiver.archivedData(withRootObject: dict2, requiringSecureCoding: false)
            UserDefaults.standard.set(data2, forKey: "anxietyDict")
        }
        catch
        {
                print("Error saving to memory")
        }
        
        let dict4 = [1:"If you have not, please take your prescription medication.",
                     2:"You may want to begin by reaching out and connect with your friends and family.",
                     3:"Begin exercising or continue if you are already exercising.",
                     4:"Begin by maintaining a healthy diet.",
                     5:"You should decide to go outside and get some sun. Do your activities outdoors instead of indoors.",
                     6:"Do activities that you enjoy and make you feel happy. Do not force yourself to do anything. Do not do anything that will harm you on purpose.",
                     7:"Identify the source, focus on the cause instead of the problem itself and think about how it can be fixed."]
        do
        {
            let data3 = try NSKeyedArchiver.archivedData(withRootObject: dict4, requiringSecureCoding: false)
            UserDefaults.standard.set(data3, forKey: "depressionDict")
        }
        catch
        {
            print("Error saving to memory")
        }
    }
}

