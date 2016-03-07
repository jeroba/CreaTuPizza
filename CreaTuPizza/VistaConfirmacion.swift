//
//  VistaConfirmacion.swift
//  CreaTuPizza
//
//  Created by Jesus Rodriguez Barrera on 06/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {
    var tamanioPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]

    @IBOutlet weak var tamanioSeleccionado: UILabel!
    @IBOutlet weak var masaSeleccionado: UILabel!
    @IBOutlet weak var QuesoSeleccionado: UILabel!
    @IBOutlet weak var ingredientesSeleccionado: UILabel!
    @IBOutlet weak var mensajeError: UILabel!
    @IBOutlet weak var ordenar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        switch tamanioPizza!{
        case 0:
            tamanioSeleccionado.text = "Chica"
        case 1:
            tamanioSeleccionado.text = "Mediana"
        case 2:
            tamanioSeleccionado.text = "Grande"
        default:
            tamanioSeleccionado.text = "Normal"
        }
        
        switch tipoMasa!{
        case 0:
            masaSeleccionado.text = "Delgada"
        case 1:
            masaSeleccionado.text = "Crujiente"
        case 2:
            masaSeleccionado.text = "Gruesa"
        default:
            masaSeleccionado.text = "Normal"
        }
        
        switch tipoQueso!{
        case 0:
            QuesoSeleccionado.text = "Mozarela"
        case 1:
            QuesoSeleccionado.text = "Cheddar"
        case 2:
            QuesoSeleccionado.text = "Parmesano"
        case 3:
            QuesoSeleccionado.text = "Sin queso"
        default:
            QuesoSeleccionado.text = "Sin queso"
        }
        
        var contador = 0
        var numeroIngredientes = 0
        ingredientesSeleccionado.text = " "
        for ingrediente in ingredientes{
            if ingrediente == true{
                numeroIngredientes += 1
            }
            if contador == 0{
                if ingrediente == true{
                    ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Jamon,"
                }
            } else{
                if contador == 1 {
                    if ingrediente == true{
                        ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Peperoni,"
                    }
                }else{
                    if contador == 2 {
                        if ingrediente == true{
                            ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Pavo,"
                        }
                    }else{
                        if contador == 3 {
                            if ingrediente == true{
                                ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Salchicha,"
                            }
                        }else{
                            if contador == 4 {
                                if ingrediente == true{
                                    ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Aceitunas,"
                                }
                            }else{
                                if contador == 5 {
                                    if ingrediente == true{
                                        ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Cebolla,"
                                    }
                                }else{
                                    if contador == 6 {
                                        if ingrediente == true{
                                            ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Pimiento,"
                                        }
                                    }else{
                                        if contador == 7 {
                                            if ingrediente == true{
                                                ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Piña,"
                                            }
                                        }else{
                                            if contador == 8 {
                                                if ingrediente == true{
                                                    ingredientesSeleccionado.text = ingredientesSeleccionado.text! + "Anchoa,"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            contador += 1
        }
        
        
        if numeroIngredientes < 1{
            mensajeError.text = "Seleccione por lo menos un ingrediente."
            ordenar.hidden = true
        }else{
            if numeroIngredientes > 5{
                mensajeError.text = "Solo puede seleccionar 5 ingredientes."
                ordenar.hidden = true
            }else{
                ordenar.hidden = false
                mensajeError.text = ""
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! VistaProcesada
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
