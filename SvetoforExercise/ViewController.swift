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

