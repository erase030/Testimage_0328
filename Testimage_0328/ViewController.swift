//
//  ViewController.swift
//  Testimage_0328
//
//  Created by dit08 on 2019. 3. 28..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    var count = 1
    var timer = Timer() //타이머 객체 생성
    var isAnimationg = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = UIImage(named: "Image\(count)")
        lbl.text = String(count)
    }
    @IBAction func Play(_ sender: Any) {
        print("playBtnPressed")
        
        if isAnimationg == true { return }
        else { isAnimationg = true }
        
            //타이머 작동
            timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(_ sender: Any) {
        timer.invalidate()
        
        isAnimationg = false
    }
    
    @IBAction func Stop(_ sender: Any) {
        timer.invalidate()
        count = 0
        
        isAnimationg = false
    }
    
    @objc func doAnimation() {
        if count == 5 {
            count = 0
        }
        count+=1
        imgView.image = UIImage(named: "Image\(count)")
        lbl.text = String(count)
    }

}

