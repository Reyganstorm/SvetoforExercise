//
//  ViewController.swift
//  SvetoforExercise
//
//  Created by Руслан Штыбаев on 08.02.2022.
//

import UIKit

enum Lights{
        case red
        case yellow
        case green
    }

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var lightsButton: UIButton!
    
    private var currentLight = Lights.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightsButton.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        getNewShape(colorView: redView)
        getNewShape(colorView: yellowView)
        getNewShape(colorView: greenView)
    }
    
    func getNewShape(colorView: UIView) {
        colorView.layer.cornerRadius = colorView.frame.width/2
    }

    @IBAction func lightsChangingButton() {
        if lightsButton.currentTitle == "START" {
            lightsButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redView.alpha = lightIsOn
            greenView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowView.alpha = lightIsOn
            redView.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
}

