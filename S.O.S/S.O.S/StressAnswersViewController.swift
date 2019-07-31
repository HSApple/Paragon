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
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBAction func anotherAdvice(_ sender: Any)
    {
      print("more advice")
        answer.text = dict[yes]
        yes+=1
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        dict3 = [1:"",
                 2:"",
                 3:"",
                 4:"",
                 5:"",
                 6:""]
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
            answer.text = dict[yes]
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
