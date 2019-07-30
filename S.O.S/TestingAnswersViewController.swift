//
//  TestingAnswersViewController.swift
//  S.O.S
//
//  Created by student on 7/23/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TestingAnswersViewController: UIViewController
{
    
    let dict3 = [1:"breathingExersise"]
    var yes = 10000
    var dict:[Int:String] = [:]
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBAction func anotherAdvice(_ sender: Any)
    {
        print("more advice")
        answer.text = dict[yes]
        yes+=1
        
        image.image = UIImage(named: dict3[1]!)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
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
        
        if let data2 = UserDefaults.standard.object(forKey: "anxietyDict") as? NSData
        {
            let dict2 = NSKeyedUnarchiver.unarchiveObject(with: data2 as Data)
            dict = dict2 as! [Int : String]
        }
    
        if yes != 10000 && dict.count > 0
        {
            print("in Populate")
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
