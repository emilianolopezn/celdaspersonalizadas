//
//  ViewController.swift
//  celdaspersonalizadas
//
//  Created by Alumno on 18/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let alumnos = ["Benjamin", "Pablo", "Sofia", "Rafa", "Fernanda"]
    let promedios = [9.9, 9.8, 9.7, 9.6, 9.5]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaAlumno = tableView.dequeueReusableCell(withIdentifier: "cellAlumno") as? CeldaAlumno
        
        
        celdaAlumno?.lblAlumno.text = alumnos[indexPath.row]
        celdaAlumno?.lblPromedio.text = "\(promedios[indexPath.row])"
        
        
        return celdaAlumno!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

