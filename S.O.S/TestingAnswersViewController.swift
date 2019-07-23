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
    var dict:[String: Int] = [:]
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBAction func anotherAdvice(_ sender: Any)
    {
     answer.text = "hello"
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var dict:[String:Int] = [:]
        UserDefaults.standard.set(dict, forKey: "dict")
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
