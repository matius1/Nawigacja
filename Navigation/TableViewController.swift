//
//  TableViewController.swift
//  Navigation
//
//  Created by Mateusz on 06/12/2016.
//  Copyright © 2016 Mateusz Skocz. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
    
    
    let biuro = [
        ("Dyrektor", "1"),
        ("Menadzer", "2"),
        ("Developer", "3"),
        ("Tester", "4"),
        ("Scrum Master", "5")
        
    ]
    
    //ile sekcji w tabeli
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //ile wierszy
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return biuro.count
    }
    
    //zawartosc wierszy
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let (name, _) = biuro[indexPath.row]
        cell.textLabel?.text = name
        return cell
    }
    
    //tytul sekcji
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return "Lista"
    }

        
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TableViewController zaladowany")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
