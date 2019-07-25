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
        
        let dict:[Int:String] = [:]
        UserDefaults.standard.set(dict, forKey: "stressDict")
        
        let dict2 = [1:"breathingExcerise", 2:"calmMusic", 3:"thinkOfThepresent", 4:"movement", 5:"calmDownAndRelax", 6:"writeItDown"]
        UserDefaults.standard.set(dict2, forKey: "anxietyDict")
        
        let dict3:[Int:String] = [:]
        UserDefaults.standard.set(dict3, forKey: "depressionDict")
    }


}

