//
//  ViewController.swift
//  moneygame
//
//  Created by Yang Nina on 2021/4/6.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bearView: UIView!
    @IBOutlet var duckView: UIView!
    @IBOutlet var puzzleView: UIView!
    @IBOutlet var legoView: UIView!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var reBtn: UIButton!
    
    @IBOutlet weak var athousandStepper: UIStepper!
    @IBOutlet weak var fivehundredStepper: UIStepper!
    @IBOutlet weak var twohundredStepper: UIStepper!
    @IBOutlet weak var hundredStrpper: UIStepper!
    @IBOutlet weak var fiftyStepper: UIStepper!
    @IBOutlet weak var tenStepper: UIStepper!
    @IBOutlet weak var fiveStepper: UIStepper!
    @IBOutlet weak var oneStepper: UIStepper!
    
    @IBOutlet weak var thousandLabel: UILabel!
    @IBOutlet weak var fivehundredLabel: UILabel!
    @IBOutlet weak var twohundredLabel: UILabel!
    @IBOutlet weak var hundredLabel: UILabel!
    @IBOutlet weak var fiftyLabel: UILabel!
    @IBOutlet weak var tenLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var oneLabel: UILabel!
    
    @IBOutlet weak var toySegment: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bearView.isHidden = false
        duckView.isHidden = true
        puzzleView.isHidden = true
        legoView.isHidden = true
        
        textLabel.text = ""
    }

    @IBAction func toySelect(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0){
            bearView.isHidden = false
            duckView.isHidden = true
            puzzleView.isHidden = true
            legoView.isHidden = true
        }
        else if(sender.selectedSegmentIndex == 1){
            bearView.isHidden = true
            duckView.isHidden = false
            puzzleView.isHidden = true
            legoView.isHidden = true
        }
        else if(sender.selectedSegmentIndex == 2){
            bearView.isHidden = true
            duckView.isHidden = true
            puzzleView.isHidden = false
            legoView.isHidden = true
        }
        else if(sender.selectedSegmentIndex == 3){
            bearView.isHidden = true
            duckView.isHidden = true
            puzzleView.isHidden = true
            legoView.isHidden = false
        }
        reset()
    }
    
    @IBAction func changeqty(_ sender: Any) {
        let thousandQty = Int(athousandStepper.value)
        thousandLabel.text = "\(thousandQty)"
        
        let fivehundredQty = Int(fivehundredStepper.value)
        fivehundredLabel.text = "\(fivehundredQty)"
        
        let twohundredQty = Int(twohundredStepper.value)
        twohundredLabel.text = "\(twohundredQty)"
        
        let hundredQty = Int(hundredStrpper.value)
        hundredLabel.text = "\(hundredQty)"
        
        let fiftyQty = Int(fiftyStepper.value)
        fiftyLabel.text = "\(fiftyQty)"
        
        let tenQty = Int(tenStepper.value)
        tenLabel.text = "\(tenQty)"
        
        let fiveQty = Int(fiveStepper.value)
        fiveLabel.text = "\(fiveQty)"
        
        let oneQty = Int(oneStepper.value)
        oneLabel.text = "\(oneQty)"
        
        totalLabel.text = "\(thousandQty * 1000 + fivehundredQty * 500 + twohundredQty * 200 + hundredQty * 100 + fiftyQty * 50 + tenQty * 10 + fiveQty * 5 + oneQty * 1)"

    }
    @IBAction func zerochange(_ sender: UIButton) {
        reset()
    }
    @IBAction func compare(_ sender: UIButton) {
        if toySegment.selectedSegmentIndex == 0 {
            if totalLabel.text == "\(6850)" {
                textLabel.text = "購買完成!"
            }
            else if totalLabel.text! < "\(6850)" {
                textLabel.text = "金額不足!"
            }
            else if totalLabel.text! > "\(6850)" {
                textLabel.text = "要找您" + "\(Int(totalLabel.text!)! - 6850)" + "元"
            }
        }
        else if toySegment.selectedSegmentIndex == 1 {
            if totalLabel.text == "\(5899)" {
                textLabel.text = "購買完成!"
            }
            else if totalLabel.text! < "\(5899)" {
                textLabel.text = "金額不足!"
            }
            else if totalLabel.text! > "\(5899)"{
                textLabel.text = "要找您" + "\(Int(totalLabel.text!)! - 5899)" + "元"
            }
        }else if toySegment.selectedSegmentIndex == 1 {
            if totalLabel.text == "\(4423)" {
                textLabel.text = "購買完成!"
            }
            else if totalLabel.text! < "\(4423)" {
                textLabel.text = "金額不足!"
            }
            else if totalLabel.text! > "\(4423)"{
                textLabel.text = "要找您" + "\(Int(totalLabel.text!)! - 4423)" + "元"
            }
        }
        else{
            if totalLabel.text == "\(7637)" {
                textLabel.text = "購買完成!"
            }
            else if totalLabel.text! < "\(7637)" {
                textLabel.text = "金額不足!"
            }
            else if totalLabel.text! > "\(7637)" {
                textLabel.text = "要找您" + "\(Int(totalLabel.text!)! - 7637)" + "元"           }
    
}
    }
    
    func reset(){
        
        athousandStepper.value = 0
        thousandLabel.text = "\(0)"
        
        fivehundredStepper.value = 0
        fivehundredLabel.text = "\(0)"
        
        twohundredStepper.value = 0
        twohundredLabel.text = "\(0)"
        
        hundredStrpper.value = 0
        hundredLabel.text = "\(0)"
        
        fiftyStepper.value = 0
        fiftyLabel.text = "\(0)"
        
        tenStepper.value = 0
        tenLabel.text = "\(0)"
        
        fiveStepper.value = 0
        fiveLabel.text = "\(0)"
        
        oneStepper.value = 0
        oneLabel.text = "\(0)"
        
        totalLabel.text = "0"
        textLabel.text = ""
    }
}

