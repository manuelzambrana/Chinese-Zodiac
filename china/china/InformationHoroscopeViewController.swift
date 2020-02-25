//
//  InformationHoroscopeViewController.swift
//  china
//
//  Created by user164196 on 2/20/20.
//  Copyright © 2020 Manuel Zambrana. All rights reserved.
//

import UIKit

class InformationHoroscopeViewController: UIViewController {

    @IBOutlet weak var elementImage: UIImageView!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var descriptionAnimal: UILabel!
    @IBOutlet weak var textTitle: UILabel!
    var zodiac: String = ""
    var descriptionAnimals: String = ""
    var photoAnimal: String = ""
    var element: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textTitle.text = zodiac
        descriptionAnimal.text = descriptionAnimals
        animalImage.image = UIImage(named: photoAnimal)
        elementImage.image = UIImage(named: element)
        // Do any additional setup after loading the view.
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
