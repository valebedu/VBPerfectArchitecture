//
//  VabeRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a router requirements to manage Perfect `Routes`.
 
 - authors: Valentin Bercot
 */
public protocol VabeRouter
{
    /**
     Represent the `routes` basic endpoint (without `id`)
     */
    var endpoint: String { get }
    
    /**
     Theses routes should be added to the `PerfectHTTPServer` routes in order to complete VabeArchitecture workflow.
     */
    var routes: Routes { get }
}
