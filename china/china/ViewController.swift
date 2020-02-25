//
//  ViewController.swift
//  china
//
//  Created by user164196 on 2/18/20.
//  Copyright © 2020 Manuel Zambrana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var horoscope: Horoscope!
    @IBOutlet weak var dateSender: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var yearText: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          guard let destination = segue.destination as? InformationHoroscopeViewController else { return }
        destination.zodiac = calculateHoroscope(date: datePicker.date)
        destination.descriptionAnimals = descriptionAnimal(date: datePicker.date)
        destination.photoAnimal = imageAnimal(date: datePicker.date)
        destination.element = elementAnimal(date: datePicker.date)
       
        
    }
    @IBAction func getDatepicker(_ sender: Any) {
      
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
    }
  

    
    
}




