//
//  HeptathlonMViewController.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 19/08/2022.
//

import UIKit

class HeptathlonMViewController: UIViewController,UITextFieldDelegate{
    var heptathlonM = MensHeptathlon()
    @IBOutlet weak var pointsTotal: UITextField!
    @IBOutlet weak var pointsDay2: UITextField!
    @IBOutlet weak var points1000M: UITextField!
    @IBOutlet weak var pointsPV: UITextField!
    @IBOutlet weak var pointsHurdles: UITextField!
    @IBOutlet weak var pointsDay1: UITextField!
    @IBOutlet weak var pointsHJ: UITextField!
    @IBOutlet weak var pointsSP: UITextField!
    @IBOutlet weak var pointsLJ: UITextField!
    @IBOutlet weak var points60M: UITextField!
    @IBOutlet weak var mark1000M: UITextField!
    @IBOutlet weak var markPV: UITextField!
    @IBOutlet weak var markHurdles: UITextField!
    @IBOutlet weak var markHJ: UITextField!
    @IBOutlet weak var markSP: UITextField!
    @IBOutlet weak var markLJ: UITextField!
    @IBOutlet weak var mark60M: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        mark60M.delegate = self
        markLJ.delegate = self
        markSP.delegate = self
        markHJ.delegate = self
        markHurdles.delegate = self
        markPV.delegate = self
        mark1000M.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func EditingEnded(_ sender: UITextField) {
        if sender.hasText{
            switch sender{
            case mark60M:
                points60M.text = heptathlonM.calculate60M(mark60M.text!)
            case markLJ:
                pointsLJ.text = heptathlonM.calculateLJ(markLJ.text!)
            case markSP:
                pointsSP.text = heptathlonM.calculateSP(markSP.text!)
            case markHJ:
                pointsHJ.text = heptathlonM.calculateHJ(markHJ.text!)
            case markHurdles:
                pointsHurdles.text = heptathlonM.calculateHurdles(markHurdles.text!)
            case markPV:
                pointsPV.text = heptathlonM.calculatePV(markPV.text!)
            case mark1000M:
                points1000M.text = heptathlonM.calculate1000M(mark1000M.text!)
            default:
                break
                
            }
            pointsDay1.text = String(heptathlonM.pointsDay1)
            pointsDay2.text = String(heptathlonM.pointsDay2)
            pointsTotal.text = String(heptathlonM.pointsTotal)
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
