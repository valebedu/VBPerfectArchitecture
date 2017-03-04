//
//  VabeConfigurator.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VabeConfigurator` requirements. The configurator goal is to create controller interactor presenter cycle in order to complete VabeArchitecture.
 
 - attention: This class should implement Singleton design pattern.
 
 - authors: Valentin Bercot
 */
public protocol VabeConfigurator
{
    /**
     Congigure the controller interactor presenter cycle.
     
     - parameters:
       - controller: the controller in which the cycle start.
     */
    func configure(controller: VabeController)
}
