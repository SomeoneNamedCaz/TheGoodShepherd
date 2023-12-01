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
    var index = 0;
    let PointSpacing = 50;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func triggerListener(_ sender: Any) {
        if (view.backgroundColor == .black){
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            sayHi()
            generatePoint(pointIndex: index)
            index+=1
            let location = touch.location(in: self.view)
            var xpoint = location.x
            var ypoint = location.y
            print(xpoint, ypoint)
            //Initialize the view at the correct spot
            //We set the view's frame by giving it an origin (that's the CGPoint we build from the x and y coordinates) and giving it a size, which can be anything really
            let pointView = UIView(frame: CGRect(origin: CGPoint(x: xpoint, y: ypoint), size: CGSize(width: 25, height: 25)))

            //Round the view's corners so that it is a circle, not a square
            pointView.layer.cornerRadius = 12.5
            pointView.layer.opacity = 0.5
            //Give the view a background color (in this case, blue)
            pointView.backgroundColor = .blue

            //Add the view as a subview of the current view controller's view
            self.view.addSubview(pointView)
        }
    }
    
    @IBSegueAction func showNextController(_ coder: NSCoder) -> UIViewController? {
        return UIViewController(coder: coder)
    }
    
    func sayHi(){
        var thingToSay = "hi"
        print(thingToSay)
    }
    func generatePoint(pointIndex: Int) {
        var xpos = pointIndex * PointSpacing
        var ypos = 400 - (pointIndex * PointSpacing + Int.random(in:0..<10) - PointSpacing)
        var xPosString = String(xpos)
        var thingToSay = "hi"
        thingToSay += xPosString
        print(thingToSay)
        
        //Initialize the view at the correct spot
        //We set the view's frame by giving it an origin (that's the CGPoint we build from the x and y coordinates) and giving it a size, which can be anything really
        let pointView = UIView(frame: CGRect(origin: CGPoint(x: xpos, y: ypos), size: CGSize(width: 25, height: 25)))
        //Round the view's corners so that it is a circle, not a square
        pointView.layer.cornerRadius = 12.5
        pointView.layer.opacity = 0.5
        //Give the view a background color (in this case, blue)
        pointView.backgroundColor = .red

        //Add the view as a subview of the current view controller's view
        self.view.addSubview(pointView)
    }

}

