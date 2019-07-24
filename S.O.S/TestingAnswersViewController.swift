//
//  TestingAnswersViewController.swift
//  S.O.S
//
//  Created by student on 7/23/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TestingAnswersViewController: UIViewController{
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBAction func anotherAdvice(_ sender: Any)
    {
     answer.text = "hello"
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        retrieveResults()
        
                // Do any additional setup after loading the view.
        
        
    }
    func retrieveResults(){
        var yes = 10000
        var dict:[Int:String] = [:]
        
        var arrayObject = UserDefaults.standard.object(forKey: "answerList")
        if let tempItems = arrayObject as? [Bool]
        {
            let answerList = tempItems
            yes = answerList.count
        }
        
        var arrayObject1 = UserDefaults.standard.object(forKey: "stressDict")
        if let tempItems = arrayObject1 as? [Int:String]
        {
            dict = tempItems
        }
        
        if yes != 10000 && dict.count > 0 {
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
