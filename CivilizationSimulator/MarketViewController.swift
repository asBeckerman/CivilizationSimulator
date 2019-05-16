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
    @IBOutlet weak var Butt2Text: UITextField!
    @IBOutlet weak var Butt3Text: UITextField!
    @IBOutlet weak var Butt4Text: UITextField!
    @IBOutlet weak var Butt5Text: UITextField!
    @IBOutlet weak var Butt6Text: UITextField!
    @IBOutlet weak var Butt7Text: UITextField!
    @IBOutlet weak var Butt8Text: UITextField!
    @IBOutlet weak var Butt9Text: UITextField!
    @IBOutlet weak var Butt10Text: UITextField!
    @IBOutlet weak var Butt11Text: UITextField!
    @IBOutlet weak var Butt12Text: UITextField!
    
    var Reso: [Resource]!
    var player: Player!
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
        if(player.level >= Reso[0].level){
        if(marketState){
            if(attempt < player.money){
                player.money = player.money - attempt
                Reso[0].quantity = Reso[0].quantity + attempt/Reso[0].price
                ErrorClear()
            }
            else{
                ErrorMoneyStuff()
            }
        }
        else{
            if(attempt/Reso[0].price <= Reso[0].quantity){
                player.money += attempt
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
    
    @IBAction func BUTT2Action(_ sender: Any) {
        let attempt = Reso[1].price * Int(Butt2Text.text!)!
        if(player.level >= Reso[1].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[1].quantity = Reso[1].quantity + attempt/Reso[1].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[1].price <= Reso[1].quantity){
                    player.money += attempt
                    Reso[1].quantity = Reso[1].quantity - attempt/Reso[1].price
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
    @IBAction func Butt3Action(_ sender: Any) {
        let attempt = Reso[2].price * Int(Butt3Text.text!)!
        if(player.level >= Reso[2].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[2].quantity = Reso[2].quantity + attempt/Reso[2].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[1].price <= Reso[1].quantity){
                    player.money += attempt
                    Reso[1].quantity = Reso[1].quantity - attempt/Reso[1].price
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
    @IBAction func Butt4action(_ sender: Any) {
        let attempt = Reso[3].price * Int(Butt4Text.text!)!
        if(player.level >= Reso[3].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[3].quantity = Reso[3].quantity + attempt/Reso[3].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[3].price <= Reso[3].quantity){
                    player.money += attempt
                    Reso[3].quantity = Reso[3].quantity - attempt/Reso[3].price
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
    @IBAction func Butt5Action(_ sender: Any) {
        let attempt = Reso[4].price * Int(Butt5Text.text!)!
        if(player.level >= Reso[4].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[4].quantity = Reso[4].quantity + attempt/Reso[4].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[4].price <= Reso[4].quantity){
                    player.money += attempt
                    Reso[4].quantity = Reso[4].quantity - attempt/Reso[4].price
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
    @IBAction func Butt6Action(_ sender: Any) {
        let attempt = Reso[5].price * Int(Butt6Text.text!)!
        if(player.level >= Reso[5].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[5].quantity = Reso[1].quantity + attempt/Reso[1].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[5].price <= Reso[5].quantity){
                    player.money += attempt
                    Reso[5].quantity = Reso[5].quantity - attempt/Reso[5].price
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
    @IBAction func Butt7Action(_ sender: Any) {
        let attempt = Reso[6].price * Int(Butt7Text.text!)!
        if(player.level >= Reso[6].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[6].quantity = Reso[6].quantity + attempt/Reso[6].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[6].price <= Reso[6].quantity){
                    player.money += attempt
                    Reso[6].quantity = Reso[6].quantity - attempt/Reso[6].price
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
    
    @IBAction func Butt8Action(_ sender: Any) {
        let attempt = Reso[7].price * Int(Butt8Text.text!)!
        if(player.level >= Reso[7].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[7].quantity = Reso[7].quantity + attempt/Reso[7].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[7].price <= Reso[7].quantity){
                    player.money += attempt
                    Reso[7].quantity = Reso[7].quantity - attempt/Reso[7].price
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
    
    @IBAction func Butt9Action(_ sender: Any) {
        let attempt = Reso[8].price * Int(Butt9Text.text!)!
        if(player.level >= Reso[8].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[8].quantity = Reso[8].quantity + attempt/Reso[8].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[8].price <= Reso[8].quantity){
                    player.money += attempt
                    Reso[8].quantity = Reso[8].quantity - attempt/Reso[8].price
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
    @IBAction func Butt10Action(_ sender: Any) {
        let attempt = Reso[9].price * Int(Butt10Text.text!)!
        if(player.level >= Reso[9].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[9].quantity = Reso[9].quantity + attempt/Reso[9].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[9].price <= Reso[9].quantity){
                    player.money += attempt
                    Reso[9].quantity = Reso[9].quantity - attempt/Reso[9].price
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
    @IBAction func Butt11action(_ sender: Any) {
        let attempt = Reso[10].price * Int(Butt11Text.text!)!
        if(player.level >= Reso[10].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[10].quantity = Reso[10].quantity + attempt/Reso[10].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[10].price <= Reso[10].quantity){
                    player.money += attempt
                    Reso[10].quantity = Reso[10].quantity - attempt/Reso[10].price
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
    @IBAction func Butt12Action(_ sender: Any) {
        let attempt = Reso[11].price * Int(Butt12Text.text!)!
        if(player.level >= Reso[11].level){
            if(marketState){
                if(attempt < player.money){
                    player.money = player.money - attempt
                    Reso[11].quantity = Reso[11].quantity + attempt/Reso[11].price
                    ErrorClear()
                }
                else{
                    ErrorMoneyStuff()
                }
            }
            else{
                if(attempt/Reso[11].price <= Reso[11].quantity){
                    player.money += attempt
                    Reso[11].quantity = Reso[11].quantity - attempt/Reso[11].price
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
        ErrorLabel.text = " not enough money. you have \(player.money) "
    }
    func ErrorSellStuff(){
        ErrorLabel.text = " Your trying to sell to much idiot "
    }
    func ErrorClear(){
        ErrorLabel.text = " you have \(player.money) "
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
