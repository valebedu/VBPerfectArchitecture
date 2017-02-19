//
//  VabeExecuteController.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VabeExecuteController` requirements. Extend it to create a controller which handle an executable route.
 
 If you want to manage ressource routes see `VabeRessourceController`.
 
 - authors: Valentin Bercot
 */
public protocol VabeExecuteController: VabeController
{
    /**
     Handle request from `VabeExecuteRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handle(request: HTTPRequest, response: HTTPResponse)
}

public extension VabeExecuteController
{
    /**
     Display response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func display(response: HTTPResponse)
    {
        response.completed()
    }
}
