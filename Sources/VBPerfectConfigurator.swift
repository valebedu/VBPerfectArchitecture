//
//  VBPerfectConfigurator.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VBPerfectConfigurator` requirements. The configurator goal is to create controller interactor presenter cycle in order to complete VBPerfectArchitecture.
 
 - attention: This class should implement Singleton design pattern.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectConfigurator
{
    /**
     Congigure the controller interactor presenter cycle.
     
     - parameters:
       - controller: the controller in which the cycle start.
     */
    func configure(controller: VBPerfectController)
}
