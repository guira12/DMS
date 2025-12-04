package com.drone.droneManager.repository;

import com.drone.droneManager.model.Pilot;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface PilotRepository extends CrudRepository<Pilot, UUID> {
}
