package com.drone.droneManager.service;


import com.drone.droneManager.model.Pilot;
import com.drone.droneManager.repository.PilotRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Data
@Service
public class PilotService {

    @Autowired   // Spring dependency injection
    private PilotRepository pilotRepository;

    public Optional<Pilot> getPilot(final UUID id) {
        return pilotRepository.findById(id);
    }

    public Iterable<Pilot> getPilots() {
        return pilotRepository.findAll();
    }

    public void deletePilot(final UUID id) {
        pilotRepository.deleteById(id);
    }

    public Pilot savePilot(Pilot pilot) {
        return pilotRepository.save(pilot);
    }
}
