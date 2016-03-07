//
//  VistaIngredientes.swift
//  CreaTuPizza
//
//  Created by Jesus Rodriguez Barrera on 06/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    var tamanioPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]

    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        ingredientes.append(jamon.on)
        ingredientes.append(peperoni.on)
        ingredientes.append(pavo.on)
        ingredientes.append(salchicha.on)
        ingredientes.append(aceituna.on)
        ingredientes.append(cebolla.on)
        ingredientes.append(pimiento.on)
        ingredientes.append(pina.on)
        ingredientes.append(anchoa.on)
        
        let sigVista = segue.destinationViewController as! VistaConfirmacion
        sigVista.tamanioPizza = tamanioPizza
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = tipoQueso
        sigVista.ingredientes = ingredientes
        
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
