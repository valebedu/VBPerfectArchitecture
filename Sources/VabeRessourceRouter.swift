//
//  VabeRessourceRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public class VabeRessourceRouter: VabeRouter
{
    private let id: String
    
    public let endpoint: String
    public let routes: Routes
    
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
