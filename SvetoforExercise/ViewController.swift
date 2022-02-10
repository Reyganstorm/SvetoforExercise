//
//  ViewController.swift
//  SvetoforExercise
//
//  Created by Руслан Штыбаев on 08.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var lightsButton: UIButton!
    
    enum Lights: Int {
        case red = 1
        case yellow = 2
        case green = 3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewShape(colorView: redView)
        getNewShape(colorView: yellowView)
        getNewShape(colorView: greenView)
        lightsButton.layer.cornerRadius = 10
    }
    
    func getNewShape(colorView: UIView) {
        colorView.layer.cornerRadius = colorView.frame.height/2
        colorView.alpha = 0.3
    }

    @IBAction func lightsChangingButton() {
        }
}

