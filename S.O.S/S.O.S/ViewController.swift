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
    }


}

