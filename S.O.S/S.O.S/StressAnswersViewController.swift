//
//  StressAnswersViewController.swift
//  S.O.S
//
//  Created by student on 7/29/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class StressAnswersViewController: UIViewController
{
    var dict3: [Int:String] = [:]
    var yes = 10000
    var dict:[Int:String] = [:]
    
    @IBOutlet weak var aabutton: UIButton!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBAction func anotherAdvice(_ sender: Any)
    {
      print("more advice")
        if yes <= 1 {
            answer.text = "Hope you Get better! Remember, never give up and keep on fighting!"
            image.image = UIImage(named: "grouptherapy.jpg")
            aabutton.setTitle("", for: UIControl.State.normal)
        }
        else {
            yes-=1
            answer.text = dict[yes]
            image.image = UIImage(named:dict3[yes]!)
        }
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        dict3 = [1:"rest",
                 2:"meditate",
                 3:"listeningToMusic",
                 4:"time",
                 5:"exercise",
                 6:"sleep", 7:"illegalDrugs"]
        retrieveResults()

        // Do any additional setup after loading the view.
    }
    
    func retrieveResults()
    {
        print("retrieving results")
        
        var arrayObject = UserDefaults.standard.object(forKey: "answerList")
        if let tempItems = arrayObject as? [Bool]
        {
            let answerList = tempItems
            yes = answerList.count
            print(yes)
        }
        
        if let data1 = UserDefaults.standard.object(forKey: "stressDict") as? NSData
        {
            let dict1 = NSKeyedUnarchiver.unarchiveObject(with: data1 as Data)
            dict = dict1 as! [Int:String]
        }
        
        if yes != 10000 && dict.count > 0
        {
            print("in populate")
            if yes > 6 {
                yes = 6
            }else if yes == 0 {
                answer.text = "Hope you get better! Remember, never give up and keep on fighting!"
                aabutton.setTitle("", for: UIControl.State.normal)
            }   else {     print(dict3[yes]!)
                answer.text = dict[yes]
                image.image = UIImage(named:dict3[yes]!)
            }
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
