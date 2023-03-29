//
//  ViewController.swift
//  LocalBeer
//
//  Created by Valery Frenkel on 11.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    // First beer
    @IBOutlet weak var firstBeerNameLabel: UILabel!
    @IBOutlet weak var firstBeerAmountLabel: UILabel!
    @IBOutlet weak var firstBeerMinusButton: UIButton!
    @IBOutlet weak var firstBeerPlusButton: UIButton!
    
    //Second beer
    @IBOutlet weak var secondBeerNameLabel: UILabel!
    @IBOutlet weak var secondBeerAmountLabel: UILabel!
    @IBOutlet weak var secondBeerMinusButton: UIButton!
    @IBOutlet weak var secondBeerPlusButton: UIButton!
    
    //Third beer
    @IBOutlet weak var thirdBeerNameLabel: UILabel!
    @IBOutlet weak var thirdBeerAmountLabel: UILabel!
    @IBOutlet weak var thirdBeerMinusLabel: UIButton!
    @IBOutlet weak var thirdBeerPlusLabel: UIButton!
    
    //Overall sum of order
    @IBOutlet weak var overallSumOfOrderLabel: UILabel!
    
    //Sell button
    @IBOutlet weak var sellButton: UIButton!
    
    //End day button
    @IBOutlet weak var endDayButton: UIButton!
    
    //Start day button
    @IBOutlet weak var startDayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstBeerNameLabel.text = Manager.shared.firstBeer.name
        
        self.secondBeerNameLabel.text = Manager.shared.secondBeer.name
        
        self.thirdBeerNameLabel.text = Manager.shared.thirdBeer.name
        
        self.overallSumOfOrderLabel.text = "Order is empty"
        
        self.sellButton.setTitle("Sell", for: .normal)
        
        self.endDayButton.setTitle("End day", for: .normal)
        
        self.startDayButton.setTitle("Start day", for: .normal)
        
    }
    
    
    @IBAction func firstBeerPlusButtonPressed(_ sender: UIButton) {
        
        Manager.shared.plusFirstBeer()
        
        firstBeerAmountLabel.text = "\(Manager.shared.firstBeerCounter)"
        
    }
    
    
    @IBAction func firstBeerMinusButtonPressed(_ sender: UIButton) {

        Manager.shared.minusFirstBeer()
        
        firstBeerAmountLabel.text = "\(Manager.shared.firstBeerCounter)"

    }
    
    
    @IBAction func secondBeerPlusButtonPressed(_ sender: UIButton) {
        
        Manager.shared.plusSecondBeer()
        
        secondBeerAmountLabel.text = "\(Manager.shared.secondBeerCounter)"
        
    }
    

    @IBAction func secondBeerMinusButtonPressed(_ sender: UIButton) {
        
        Manager.shared.minusSecondBeer()
        
        secondBeerAmountLabel.text = "\(Manager.shared.secondBeerCounter)"
        
    }
    
    
    @IBAction func thirdBeerPlusButtonPressed(_ sender: UIButton) {
        
        Manager.shared.plusThirdBeer()
        
        thirdBeerAmountLabel.text = "\(Manager.shared.thirdBeerCounter)"
        
    }
    
    @IBAction func thirdBeerMinusButtonPressed(_ sender: UIButton) {
        
        Manager.shared.minusThirdBeer()
        
        thirdBeerAmountLabel.text = "\(Manager.shared.thirdBeerCounter)"
        
    }
    
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        
        Manager.shared.sellBeer()
        
        let totalSumOfOrder = (Manager.shared.firstBeerCounter * Manager.shared.firstBeer.price) + (Manager.shared.secondBeerCounter * Manager.shared.secondBeer.price) + (Manager.shared.thirdBeerCounter * Manager.shared.thirdBeer.price)
        
        overallSumOfOrderLabel.text = "\(Manager.shared.firstBeerCounter) * \(Manager.shared.firstBeer.price)$ - \(Manager.shared.firstBeer.name),\(Manager.shared.secondBeerCounter) * \(Manager.shared.secondBeer.price)$ - \(Manager.shared.secondBeer.name), \(Manager.shared.thirdBeerCounter) * \(Manager.shared.thirdBeer.price)$ - \(Manager.shared.thirdBeer.name). Total sum: \(totalSumOfOrder)$"
        
        Manager.shared.firstBeerCounter = 0
        Manager.shared.secondBeerCounter = 0
        Manager.shared.thirdBeerCounter = 0
        
        firstBeerAmountLabel.text = "\(Manager.shared.firstBeerCounter)"
        
        secondBeerAmountLabel.text = "\(Manager.shared.secondBeerCounter)"
        
        thirdBeerAmountLabel.text = "\(Manager.shared.thirdBeerCounter)"
    }
    
    
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        
        Manager.shared.endDay()
        
        overallSumOfOrderLabel.text = "Total sum for a day : \(Manager.shared.totalSumForADay) $"
        
    }
    
    
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
        
        Manager.shared.startDay()
        
    }
    
    
}

