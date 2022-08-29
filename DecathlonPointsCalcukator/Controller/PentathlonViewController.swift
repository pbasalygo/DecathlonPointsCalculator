//
//  PentathlonViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 19/08/2022.
//

import UIKit

class PentathlonViewController: UIViewController,UITextFieldDelegate {
var pentathlon = Pentathlon()
    @IBOutlet weak var mark800Hundreds: UITextField!
    @IBOutlet weak var pointsTotal: UITextField!
    @IBOutlet weak var points800M: UITextField!
    @IBOutlet weak var pointsLJ: UITextField!
    @IBOutlet weak var pointsSP: UITextField!
    @IBOutlet weak var pointsHJ: UITextField!
    @IBOutlet weak var pointsHurdles: UITextField!
    @IBOutlet weak var mark800M: UITextField!
    @IBOutlet weak var markLJ: UITextField!
    @IBOutlet weak var markSP: UITextField!
    @IBOutlet weak var markHJ: UITextField!
    @IBOutlet weak var markHurdles: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        markHurdles.delegate = self
        markHJ.delegate = self
        markSP.delegate = self
        markLJ.delegate = self
        mark800M.delegate = self
        mark800Hundreds.delegate = self
        

        // Do any additional setup after loading the view.
    }
    @IBAction func EditingEnded(_ sender: UITextField) {
        if sender.hasText{
            switch sender{
            case markHurdles:
                pointsHurdles.text = pentathlon.calculateHurdles(markHurdles.text!)
            case markHJ:
                pointsHJ.text = pentathlon.calculateHJ(markHJ.text!)
            case markSP:
                pointsSP.text = pentathlon.calculateSP(markSP.text!)
            case markLJ:
                pointsLJ.text = pentathlon.calculateLJ(markLJ.text!)
            case mark800M,mark800Hundreds:
                points800M.text = pentathlon.calculate800M(mark800M.text!,mark800Hundreds.text!)
            default:
                break
                
            }
            pointsTotal.text = String(pentathlon.pointsTotal)
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
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let isNumber = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string))
        let withDecimal = (
            string == NumberFormatter().decimalSeparator &&
            textField.text?.contains(string) == false
        )
        return isNumber || withDecimal
    }
}
