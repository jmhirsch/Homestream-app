//
//  FavoritesNavVC.swift
//  HomeStreaming-app
//
//  Created by Jonathan Hirsch on 8/19/20.
//

import UIKit

class FavoritesNavVC: UINavigationController {

    
    let filesDataSource = FilesDataSource(dataManager: FavoritesDataManager())
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
