//
//  VabeRessourceRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 An implementation of `VabeRouter`. This router should be use to manage ressource routes (not an action route).
 
 If you want to manage an executable route see `VabeExecuteRouter`.
 
 - authors: Valentin Bercot
 */
public class VabeRessourceRouter: VabeRouter
{
    /**
     The `routes` id. This id is used in some routes and also for children routers.
     */
    internal let id: String
    
    public let endpoint: String
    public let routes: Routes
    
    /**
     - parameters:
       - endpoint: the generated routes endpoint.
       - id: the generated routes id.
       - controller: the controller which will handle http request to theses routes.
       - parent: the routes parent.
     */
    public init(endpoint: String, id: String, controller: VabeRessourceController, parent: VabeRessourceRouter? = nil)
    {
        self.id = id
        
        if parent != nil
        {
            self.endpoint = "\(parent!.endpoint)/{\(parent!.id)}/\(endpoint)"
        }
        else
        {
            self.endpoint = endpoint
        }
        
        var routes = Routes()
        
        routes.add(method: .get, uri: "/\(self.endpoint)", handler: controller.handleList)
        routes.add(method: .get, uri: "/\(self.endpoint)/{\(self.id)}", handler: controller.handleRetrieve)
        routes.add(method: .post, uri: "/\(self.endpoint)", handler: controller.handleCreate)
        routes.add(method: .put, uri: "/\(self.endpoint)/{\(self.id)}", handler: controller.handleUpdate)
        routes.add(method: .delete, uri: "/\(self.endpoint)/{\(self.id)}", handler: controller.handleDelete)
        
        self.routes = routes
    }
}
