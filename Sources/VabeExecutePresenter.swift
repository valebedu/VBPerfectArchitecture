//
//  VabeExecutePresenter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeExecutePresenter: VabePresenter
{
    func present(identifiers: [String]?, ressource: [Any]?, response: HTTPResponse)
}
