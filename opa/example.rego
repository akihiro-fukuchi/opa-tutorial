package opa.example

import data.servers
import data.networks
import data.ports

public_servers[s] {
    s := servers[_]
    s.ports[_] == ports[i].id
    ports[i].networks[_] == networks[j].id
    networks[j].public == true
}

violations[s] {
    s := servers[_]
    s.protocols[_] == "http"
    public_servers[s]
}

