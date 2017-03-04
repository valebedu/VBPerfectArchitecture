//
//  VBPerfectController.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VBPerfectController` requirements. The controller is the entrypoint of the business layer and should achieve only input / output operations.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectController: class
{
    /**
     Controller `output` in order to complete controller interactor presenter cycle.
     */
    var output: VBPerfectInteractor! { get set }
    
    init()
}
