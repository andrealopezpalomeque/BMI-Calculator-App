//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Andrea Victoria López Palomeque on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightUISlider: UISlider!
    @IBOutlet weak var heightUISlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func weightSlider(_ sender: UISlider) {
        let value = Int(sender.value)
        weightLabel.text = "\(String(value))Kg"
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        let value = round(sender.value * 100) / 100.0
        heightLabel.text = "\(String(value))m"
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let weight = weightUISlider.value
        let height = heightUISlider.value
        
        
        let bmi = weight / pow(height, 2)
        
        print(bmi)
    }
}

