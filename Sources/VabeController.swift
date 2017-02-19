//
//  VabeController.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VabeController` requirements. The controller is the entrypoint of the business layer and should achieve only input / output operations.
 
 - authors: Valentin Bercot
 */
public protocol VabeController: class
{
    /**
     Controller `output` in order to complete controller interactor presenter cycle.
     */
    var output: VabeInteractor! { get set }
    
    init()
}
