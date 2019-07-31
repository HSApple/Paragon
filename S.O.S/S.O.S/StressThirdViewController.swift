//
//  StressThirdViewController.swift
//  S.O.S
//
//  Created by student on 7/10/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class StressThirdViewController: UIViewController
{
    var answerBool = false
    var items:[Bool] = []
    @IBAction func yesButton(_ sender: Any)
    {
        answerBool = true
        var arrayObject = UserDefaults.standard.object(forKey: "answerList")
        if let tempItems = arrayObject as? [Bool]
        {
            items = tempItems
            items.append(answerBool)
            
            print(items)
        }
        else
        {
            items = [answerBool]
        }
        UserDefaults.standard.set(items, forKey: "answerList")
    }
    
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
