//
//  HeptathlonWViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 19/08/2022.
//

import UIKit

class HeptathlonWViewController: UIViewController,UITextFieldDelegate {
    var heptathlonW = WomanHeptathlon()
    @IBOutlet weak var markHurdles: UITextField!
    
    @IBOutlet weak var pointsTotal: UITextField!
    @IBOutlet weak var pointsDay2: UITextField!
    @IBOutlet weak var points800M: UITextField!
    @IBOutlet weak var pointsJT: UITextField!
    @IBOutlet weak var pointsLJ: UITextField!
    @IBOutlet weak var pointsDay1: UITextField!
    @IBOutlet weak var points200M: UITextField!
    @IBOutlet weak var pointsSP: UITextField!
    @IBOutlet weak var pointsHJ: UITextField!
    @IBOutlet weak var pointsHurdles: UITextField!
    @IBOutlet weak var mark800M: UITextField!
    @IBOutlet weak var markJT: UITextField!
    @IBOutlet weak var markLJ: UITextField!
    @IBOutlet weak var mark200M: UITextField!
    @IBOutlet weak var markSP: UITextField!
    @IBOutlet weak var markHJ: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        markHurdles.delegate = self
        markHJ.delegate = self
        markSP.delegate = self
        mark200M.delegate = self
        markLJ.delegate = self
        markJT.delegate = self
        mark800M.delegate = self

        // Do any additional setup after loading the view.
    }
    @IBAction func EditingEnded(_ sender: UITextField) {
        if sender.hasText{
            switch sender{
            case markHurdles:
                pointsHurdles.text = heptathlonW.calculateHurdles(markHurdles.text!)
            case markHJ:
                pointsHJ.text = heptathlonW.calculateHJ(markHJ.text!)
            case markSP:
                pointsSP.text = heptathlonW.calculateSP(markSP.text!)
            case mark200M:
                points200M.text = heptathlonW.calculate200M(mark200M.text!)
            case markLJ:
                pointsLJ.text = heptathlonW.calculateLJ(markLJ.text!)
            case markJT:
                pointsJT.text = heptathlonW.calculateJT(markJT.text!)
            case mark800M:
                points800M.text = heptathlonW.calculate800M(mark800M.text!)
            default:
                break
                
            }
            pointsDay1.text = String(heptathlonW.pointsDay1)
            pointsDay2.text = String(heptathlonW.pointsDay2)
            pointsTotal.text = String(heptathlonW.pointsTotal)
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
