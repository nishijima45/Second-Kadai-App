//
//  ViewController.swift
//  Second Kadai App
//
//  Created by 西嶋 信吾 on 2018/04/25.
//  Copyright © 2018年 西嶋 信吾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているtextFieldに値を代入して渡す

        if let name = self.textField.text{
            resultViewController.name = name
        }
        
        
    }
}
