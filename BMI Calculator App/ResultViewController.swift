//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Andrea Victoria López Palomeque on 14/09/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: String?
    var colorText: UIColor?
    var adviceText: String?

    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //when the view is load
        bmiValue.text = bmiVal
        adviceLabel.text = adviceText
        bmiValue.textColor = colorText
        
        print(adviceLabel ?? "sdf")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func recalculatePressed(_ sender: UIButton) {
        //cuando se recalcula dismiss screen
        self.dismiss(animated: true, completion: nil)
    }
}
