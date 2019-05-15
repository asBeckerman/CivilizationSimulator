//
//  MarketViewController.swift
//  CivilizationSimulator
//
//  Created by Alan Tokarsky 2019 on 5/9/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController {
    var marketState = true;
    @IBOutlet weak var Butt1: UIButton!
    @IBOutlet weak var Butt2: UIButton!
    @IBOutlet weak var Butt3: UIButton!
    @IBOutlet weak var Butt4: UIButton!
    
    @IBOutlet weak var Butt5: UIButton!
    @IBOutlet weak var Butt6: UIButton!
    @IBOutlet weak var Butt7: UIButton!
    @IBOutlet weak var Butt8: UIButton!
    
    @IBOutlet weak var Butt9: UIButton!
    @IBOutlet weak var Butt10: UIButton!
    @IBOutlet weak var Butt11: UIButton!
    @IBOutlet weak var Butt12: UIButton!
    @IBOutlet weak var BUYSELL1: UISegmentedControl!
    @IBOutlet weak var ErrorLabel: UILabel!
    
    @IBOutlet weak var Butt1Text: UITextField!
    var Reso: [Resource]!
    var playerMoney: Int!
    var playerLevel: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view g.
    }
    */
    @IBAction func Butt1Action(_ sender: Any) {
        let attempt = Reso[0].price * Int(Butt1Text.text!)!
        if(playerLevel >= Reso[0].level){
        if(marketState){
            if(attempt < playerMoney){
                playerMoney = playerMoney - attempt
                Reso[0].quantity = Reso[0].quantity + attempt/Reso[0].price
                ErrorClear()
            }
            else{
                ErrorMoneyStuff()
            }
        }
        else{
            if(attempt/Reso[0].price <= Reso[0].quantity){
                playerMoney += attempt
                Reso[0].quantity = Reso[0].quantity - attempt/Reso[0].price
                ErrorClear()
            }
            else{
                ErrorSellStuff()
            }
        }
    }
        else{
            ErrorLevel()
        }
    }
    
    
    
    func ErrorMoneyStuff(){
        ErrorLabel.text = " not enough money. you have \(playerMoney!) "
    }
    func ErrorSellStuff(){
        ErrorLabel.text = " Your trying to sell to much idiot "
    }
    func ErrorClear(){
        ErrorLabel.text = " you have \(playerMoney!) "
    }
    func ErrorLevel(){
        ErrorLabel.text = " you have not unlocked this yet dumbbutt"
    }

    @IBAction func segmentStuff(_ sender: Any) {
        switch BUYSELL1.selectedSegmentIndex
        {
        case 0:
            marketState = true
            Butt1.setTitle("BUY", for: .normal)
            Butt2.setTitle("BUY", for: .normal)
            Butt3.setTitle("BUY", for: .normal)
            Butt4.setTitle("BUY", for: .normal)
            Butt5.setTitle("BUY", for: .normal)
            Butt6.setTitle("BUY", for: .normal)
            Butt7.setTitle("BUY", for: .normal)
            Butt8.setTitle("BUY", for: .normal)
            Butt9.setTitle("BUY", for: .normal)
            Butt10.setTitle("BUY", for: .normal)
            Butt11.setTitle("BUY", for: .normal)
            Butt12.setTitle("BUY", for: .normal)
            
        case 1:
            marketState = false
            Butt1.setTitle("SELL", for: .normal)
            Butt2.setTitle("SELL", for: .normal)
            Butt3.setTitle("SELL", for: .normal)
            Butt4.setTitle("SELL", for: .normal)
            Butt5.setTitle("SELL", for: .normal)
            Butt6.setTitle("SELL", for: .normal)
            Butt7.setTitle("SELL", for: .normal)
            Butt8.setTitle("SELL", for: .normal)
            Butt9.setTitle("SELL", for: .normal)
            Butt10.setTitle("SELL", for: .normal)
            Butt11.setTitle("SELL", for: .normal)
            Butt12.setTitle("SELL", for: .normal)
        default:
            break
        }
    }
    
}
