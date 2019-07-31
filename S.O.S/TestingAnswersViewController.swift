//
//  TestingAnswersViewController.swift
//  S.O.S
//
//  Created by student on 7/23/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TestingAnswersViewController: UIViewController {
    
    var yes = 10000
    var dict:[Int:String] = [:]
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    var dict3: [Int:String] = [:]
    
    @IBOutlet weak var aaButton: UIButton!
    @IBAction func anotherAdvice(_ sender: Any){
        print("more advice")
        
        if yes <= 1 {
            answer.text = "Hope you Get better! Remember, never give up and keep on fighting!"
            image.image = UIImage(named: "grouptherapy.jpg")
            aaButton.setTitle("", for: UIControl.State.normal)
        }
        else {
            yes-=1
            answer.text = dict[yes]
            image.image = UIImage(named:dict3[yes]!)
        }
    }
    
    func retrieveResults(){
        print("retrieving results")
        var arrayObject = UserDefaults.standard.object(forKey: "answerList")
        if let tempItems = arrayObject as? [Bool]
        {
            let answerList = tempItems
            yes = answerList.count
            print(yes)
        }
        
        if let data2 = UserDefaults.standard.object(forKey: "anxietyDict") as? NSData
        {
            let dict2 = NSKeyedUnarchiver.unarchiveObject(with: data2 as Data)
            dict = dict2 as! [Int : String]
        }
        
        
        if yes != 10000 && dict.count > 0
        {
            print("in Populate")
            if yes > 6 {
                yes = 6
            }else if yes == 0 {
                answer.text = "Hope you Get better! Remember, never give up and keep on fighting!"
                aaButton.setTitle("", for: UIControl.State.normal)
            }    else {        print(dict3[yes]!)
            answer.text = dict[yes]
            image.image = UIImage(named:dict3[yes]!)
            }
        }
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        dict3 = [1:"breathingExercise",
                 2:"listeningToMusic",
                 3:"rememberingThePresent",
                 4:"movement",
                 5:"calm",
                 6:"writing"]
        retrieveResults()
    }
}
