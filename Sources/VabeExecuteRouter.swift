//
//  VabeExecuteRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 An implementation of `VabeRouter`. This router should be use to manage an action route (not ressource routes).
 
 If you want to manage ressource routes see `VabeRessourceRouter`
 
 - authors: Valentin Bercot
 */
public class VabeExecuteRouter: VabeRouter
{
    /**
     The `routes` method.
     */
    private let method: HTTPMethod
    
    public let endpoint: String
    public let routes: Routes
    
    /**
     - parameters:
       - endpoint: the generated route endpoint.
       - method: the generated route method.
       - controller: the controller which will handle http request to this route.
       - parent: the routes parent.
     */
    public init(endpoint: String, method: HTTPMethod, controller: VabeExecuteController, parent: VabeRessourceRouter? = nil)
    {
        self.method = method
        
        if parent != nil
        {
            self.endpoint = "\(parent!.endpoint)/{\(parent!.id)}/\(endpoint)"
        }
        else
        {
            self.endpoint = endpoint
        }
        
        var routes = Routes()
        
        routes.add(method: self.method, uri: "/\(self.endpoint)", handler: controller.handle)
        
        self.routes = routes
    }
}
