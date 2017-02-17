//
//  VabeRessourceController.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeRessourceController: VabeController
{
    func handleList(request: HTTPRequest, response: HTTPResponse)
    func handleRetrieve(request: HTTPRequest, response: HTTPResponse)
    func handleCreate(request: HTTPRequest, response: HTTPResponse)
    func handleUpdate(request: HTTPRequest, response: HTTPResponse)
    func handleDelete(request: HTTPRequest, response: HTTPResponse)
}

public extension VabeRessourceController
{
    func displayList(response: HTTPResponse)
    {
        response.completed()
    }
    
    func displayRetrieve(response: HTTPResponse)
    {
        response.completed()
    }
    
    func displayCreate(response: HTTPResponse)
    {
        response.completed()
    }
    
    func displayUpdate(response: HTTPResponse)
    {
        response.completed()
    }
    
    func displayDelete(response: HTTPResponse)
    {
        response.completed()
    }
}
