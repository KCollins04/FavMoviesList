//
//  SecondViewController.swift
//  FavMoviesList
//
//  Created by KELSEY COLLINS on 10/25/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieInfoLabel: UILabel!
    
    var mt: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = mt
        // Do any additional setup after loading the view.
    }
    

   

}
