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
    
    enum Lights{
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewShape(colorView: redView)
        getNewShape(colorView: yellowView)
        getNewShape(colorView: greenView)
        lightsButton.layer.cornerRadius = 10
    }
    
    var lightOfSvetophor = Lights.red
    func getNewLight(for light: Lights){
        switch light {
        case .red:
            redView.alpha = 1
            greenView.alpha = 0.3
            lightOfSvetophor = .yellow
        case .yellow:
            yellowView.alpha = 1
            redView.alpha = 0.3
            lightOfSvetophor = .green
        case .green:
            greenView.alpha = 1
            yellowView.alpha = 0.3
            lightOfSvetophor = .red
        }
    }
    
    func getNewShape(colorView: UIView) {
        colorView.layer.cornerRadius = colorView.frame.height/2
        colorView.alpha = 0.3
    }

    @IBAction func lightsChangingButton() {
        lightsButton.setTitle("Next", for: .normal)
        getNewLight(for: lightOfSvetophor)
        
    }
}

