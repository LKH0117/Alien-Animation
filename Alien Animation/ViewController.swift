//
//  ViewController.swift
//  Alien Animation
//
//  Created by D7702_09 on 2018. 4. 4..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 1
    var check = true
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var counter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지 보이기
        myImageView.image = UIImage(named: "frame1.png")
        counter.text = String(1)
    }

    @IBAction func update(_ sender: Any) {
        if index == 1 {
            check = true
        }else if index == 5 {
            check = false
        }
        if check == true {
            index = index + 1
            counter.text = String(index)
            myImageView.image = UIImage(named: "frame\(index).png")
        } else if check == false{
            index = index - 1
            counter.text = String(index)
            myImageView.image = UIImage(named: "frame\(index).png")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

