//
//  VistaMasa.swift
//  CreaTuPizza
//
//  Created by Jesus Rodriguez Barrera on 06/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {
    var tamanioPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]
    
    
    @IBOutlet weak var tipoMasaSeleccionada: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        //tipoMasaSeleccionada.setEnabled(true, forSegmentAtIndex: tipoMasa!)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaQueso
        sigVista.tamanioPizza = tamanioPizza
        sigVista.tipoMasa = tipoMasaSeleccionada.selectedSegmentIndex
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
