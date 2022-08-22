//
//  DecathlonViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 18/08/2022.
//

import UIKit
class DecathlonViewController: UIViewController,UITextFieldDelegate {
    var decathlon = Decathlon()
    
    @IBOutlet weak var TotalScore: UITextField!
    @IBOutlet weak var day2Score: UITextField!
    @IBOutlet weak var Points1500M: UITextField!
    @IBOutlet weak var PointsJV: UITextField!
    @IBOutlet weak var markJV: UITextField!
    @IBOutlet weak var PointsPV: UITextField!
    @IBOutlet weak var markPV: UITextField!
    @IBOutlet weak var PointDT: UITextField!
    @IBOutlet weak var markDT: UITextField!
    @IBOutlet weak var PointsHurdles: UITextField!
    @IBOutlet weak var markHurdles: UITextField!
    @IBOutlet weak var day1Score: UITextField!
    @IBOutlet weak var Points400M: UITextField!
    @IBOutlet weak var mark400M: UITextField!
    @IBOutlet weak var PointsHJ: UITextField!
    @IBOutlet weak var markHJ: UITextField!
    @IBOutlet weak var PointsSP: UITextField!
    @IBOutlet weak var markSP: UITextField!
    @IBOutlet weak var PointsLJ: UITextField!
    @IBOutlet weak var markLJ: UITextField!
    @IBOutlet weak var Points100M: UITextField!
    @IBOutlet weak var mark100M: UITextField!
    @IBOutlet weak var Mark1500: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Mark1500.delegate = self
        mark100M.delegate = self
        markLJ.delegate = self
        markSP.delegate = self
        markHJ.delegate = self
        mark400M.delegate = self
        markHurdles.delegate = self
        markDT.delegate = self
        markPV.delegate = self
        markJV.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func EditingEnded(_ sender: UITextField) {
        switch sender{
        case mark100M:
            let score100 = decathlon.Calculate100M(mark100M.text!)
            Points100M.text = String(score100)
        case markLJ:
            let scoreLJ = decathlon.calculateLJ(markLJ.text!)
            PointsLJ.text = String(scoreLJ)
        default:
            break
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let isNumber = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string))
        let withDecimal = (
            string == NumberFormatter().decimalSeparator &&
            textField.text?.contains(string) == false
        )
        return isNumber || withDecimal
    }
    
    @IBAction func testButtonPressed(_ sender: Any) {
        
        
//        let points100M = decathlon.Calculate100M(Int(Seconds100M.text),Int(decimal100M.text))
           
            
        
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
