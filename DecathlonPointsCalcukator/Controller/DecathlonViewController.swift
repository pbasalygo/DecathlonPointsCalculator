//
//  DecathlonViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 18/08/2022.
//

import UIKit

class DecathlonViewController: UIViewController {
    var decathlon = Decathlon()
    @IBOutlet weak var cenitmetersLJ: UITextField!
    @IBOutlet weak var totalResult: UITextField!
    @IBOutlet weak var day2Result: UITextField!
    @IBOutlet weak var Result1500M: UITextField!
    @IBOutlet weak var decimal1500M: UITextField!
    @IBOutlet weak var seconds1500M: UITextField!
    @IBOutlet weak var minutes1500M: UITextField!
    @IBOutlet weak var ResultJT: UITextField!
    @IBOutlet weak var centimetersJT: UITextField!
    @IBOutlet weak var metersJT: UITextField!
    @IBOutlet weak var ResultPV: UITextField!
    @IBOutlet weak var centimetersPV: UITextField!
    @IBOutlet weak var ResultDT: UITextField!
    @IBOutlet weak var centimetersDT: UITextField!
    @IBOutlet weak var metersDT: UITextField!
    @IBOutlet weak var resultHurdles: UITextField!
    @IBOutlet weak var decimalHurdles: UITextField!
    @IBOutlet weak var secondsHurdles: UITextField!
    @IBOutlet weak var day1Result: UITextField!
    @IBOutlet weak var result400M: UITextField!
    @IBOutlet weak var decimal400M: UITextField!
    @IBOutlet weak var seconds400M: UITextField!
    @IBOutlet weak var ResultsHJ: UITextField!
    @IBOutlet weak var centimetersHJ: UITextField!
    @IBOutlet weak var metersHJ: UITextField!
    @IBOutlet weak var ResultSP: UITextField!
    @IBOutlet weak var centimetersSP: UITextField!
    @IBOutlet weak var metersSP: UITextField!
    @IBOutlet weak var ResultLJ: UITextField!
    @IBOutlet weak var decimal100M: UITextField!
    @IBOutlet weak var Seconds100M: UITextField!
    @IBOutlet weak var Result100MTF: UITextField!
    @IBOutlet weak var testButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func testButtonPressed(_ sender: Any) {
        if(Seconds100M.text != nil && decimal100M.text != nil){
            
            let performance = "\(Seconds100M.text!).\(decimal100M.text!)"
            let forPoints = Double(performance)
            
            let points100M = decathlon.Calculate100M(forPoints!)
            Result100MTF.text = String(points100M)
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
