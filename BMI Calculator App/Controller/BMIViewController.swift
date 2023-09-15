//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Andrea Victoria López Palomeque on 14/09/2023.
//

import UIKit

class BMIViewController: UIViewController {
    
    var calculateBMI = CalculateBMI()

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
        
        calculateBMI.calculateBMI(weight: weight, height: height)
        //let bmi = weight / pow(height, 2)
        
        //change screen
        self.performSegue(withIdentifier: "showResults", sender: self)
        
    }
    //paso la data a la siguiente pantalla
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showResults" {
            let resultVC = segue.destination as! ResultViewController
            //sending the values for ResultViewController
            resultVC.bmiVal = calculateBMI.getBMIValue()
            resultVC.colorText = calculateBMI.getColor()
            resultVC.adviceText = calculateBMI.getAdvice()
        }
    }
}

