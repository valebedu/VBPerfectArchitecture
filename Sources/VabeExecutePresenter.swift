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
    func present(ressources: [Any]?, response: HTTPResponse)
}
