//
//  ViewController.swift
//  currencyConverterApp
//
//  Created by Maria Hernandez on 4/27/17.
//  Copyright © 2017 mariahernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,  UIPickerViewDelegate{

    //*** Declaring Variables
    @IBOutlet weak var inCurrencyPicker: UIPickerView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var outputCurrencyLabel: UILabel!
    @IBOutlet weak var currencyFlagsLabel: UILabel!
    @IBOutlet weak var outCurrencyPicker: UIPickerView!
    
    let currencyData = ["AUD", "BRL", "GBP", "CAD", "CNY", "EUR", "INR", "JPY", "MXN", "USD"]
    let currencyFlags = ["🇦🇺", "🇧🇷", "🇬🇧", "🇨🇦", "🇨🇳", "🇪🇺", "🇮🇳", "🇯🇵", "🇲🇽", "🇺🇸"]
    let currencyTypes = ["Australian Dollar", "Brazilian Real", "British Pound", "Canadian Dollar", "Chinese Yuan", "Euro", "Indian Rupee", "Japanese Yen", "Mexican Peso", "US Dollars"]
    
    func numberOfComponents(in currencyPicker: UIPickerView) -> Int{
        return 1
    }
    
    @objc(pickerView:titleForRow:forComponent:) func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String?{
        return currencyData[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int)-> Int{
        return currencyData.count
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row:Int, inComponent component:Int){
        outputCurrencyLabel.text = currencyTypes[row]
        currencyFlagsLabel.text = currencyFlags[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
