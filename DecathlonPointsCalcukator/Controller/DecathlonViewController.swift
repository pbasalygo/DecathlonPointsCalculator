//
//  DecathlonViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 18/08/2022.
//

import UIKit
class DecathlonViewController: UIViewController,UITextFieldDelegate {
    var decathlon = Decathlon()
    
    @IBOutlet weak var mark1500Hundreds: UITextField!
    @IBOutlet weak var TotalScore: UITextField!
    @IBOutlet weak var day2Score: UITextField!
    @IBOutlet weak var Points1500M: UITextField!
    @IBOutlet weak var PointsJT: UITextField!
    @IBOutlet weak var markJT: UITextField!
    @IBOutlet weak var PointsPV: UITextField!
    @IBOutlet weak var markPV: UITextField!
    @IBOutlet weak var PointsDT: UITextField!
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
        markJT.delegate = self
        mark1500Hundreds.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func EditingEnded(_ sender: UITextField) {
        if sender.hasText{
        switch sender{
        case mark100M:
            Points100M.text = decathlon.calculate100M(mark100M.text!)
        case markLJ:
            PointsLJ.text = decathlon.calculateLJ(markLJ.text!)
        case markSP:
            PointsSP.text = decathlon.calculateSP(markSP.text!)
        case markHJ:
            PointsHJ.text = decathlon.calculateHJ(markHJ.text!)
        case mark400M:
            Points400M.text = decathlon.calculate400M(mark400M.text!)
        case markHurdles:
            PointsHurdles.text = decathlon.calculateHurdles(markHurdles.text!)
        case markDT:
            PointsDT.text = decathlon.calculateDT(markDT.text!)
        case markPV:
            PointsPV.text = decathlon.calculatePV(markPV.text!)
        case markJT:
            PointsJT.text = decathlon.calculateJT(markJT.text!)
        case Mark1500,mark1500Hundreds:
            Points1500M.text = decathlon.calculate1500M(Mark1500.text!,mark1500Hundreds.text!)
        default:
            break
        }
            day1Score.text = String(decathlon.pointsDay1)
            day2Score.text = String(decathlon.pointsDay2)
            TotalScore.text = String(decathlon.pointsTotal)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
