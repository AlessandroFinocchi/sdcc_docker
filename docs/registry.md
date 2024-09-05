# Regitry

It runs two services: the connection service and the heartbeat service. The former allows incoming hosts to discover a 
list of other nodes already inside the network, in order to allow the new ones to join the protocol activities, the 
latter permits the registry to keep an up-to-date view of the host still connected, so that the host lists 
provided during the connection contain host actually connected to the network.