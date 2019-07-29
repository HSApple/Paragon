//
//  DepressionViewController.swift
//  S.O.S
//
//  Created by student on 7/10/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DepressionViewController: UIViewController
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
    }
    
    var answers = 0
    
    
    var arrayObject = UserDefaults.standard.object(forKey: "answerList")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
