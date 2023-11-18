//
//  ViewController.swift
//  TheGoodShepherd
//
//  Created by Caz Cullimore on 11/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var testLab: UILabel!
    @IBOutlet var goalList: UIStackView!
    var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        myLabel.text =
//        testLab.text = "hi"
//        testLab
        // Do any additional setup after loading the view.
        
    }
    @IBAction func triggerListener(_ sender: Any) {
        if (view.backgroundColor == .black){
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
        
    }
    
    @IBSegueAction func showNextController(_ coder: NSCoder) -> UIViewController? {
        return UIViewController(coder: coder)
    }
    
}

