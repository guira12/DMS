package com.drone.droneManager.controller;

import com.drone.droneManager.model.Pilot;
import com.drone.droneManager.service.PilotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class PilotController {
    @Autowired
    private PilotService pilotService;

    /**
     * Read - Get all pilots
     * @return - An Iterable object of Pilot
     */
    @GetMapping("/pilots")
    public Iterable<Pilot> getPilots() {
        return pilotService.getPilots();
    }
}

