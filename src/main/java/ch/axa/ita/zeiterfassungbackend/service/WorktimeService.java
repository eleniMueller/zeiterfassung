package ch.axa.ita.zeiterfassungbackend.service;

import ch.axa.ita.zeiterfassungbackend.entity.SeviVersion;
import ch.axa.ita.zeiterfassungbackend.repository.SeviRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

/**
 * ZeiterfassungBackend
 * ch.axa.ita.zeiterfassungbackend.service
 *
 * @author Eleni
 * @version 17.07.2024
 */
@Service
public class SeviService {

    @Autowired
    private SeviRepository seviRepository;


    @Transactional
    public SeviVersion saveRfidData(String rfid) {
        LocalDate currentDate = LocalDate.now();
        LocalTime currentTime = LocalTime.now();
        try {
            SeviVersion entity = seviRepository.findByRfidAndDatum(rfid, currentDate).stream()
                    .reduce((first, second) -> second)
                    .map(lastEntity -> {
                        lastEntity.setOut(currentTime);
                        return lastEntity;
                    })
                    .orElseGet(() -> {
                        SeviVersion newEntity = new SeviVersion();
                        newEntity.setRfid(rfid);
                        newEntity.setDatum(currentDate);
                        newEntity.setEin(currentTime);
                        return newEntity;
                    });

            seviRepository.save(entity);
            return entity;
        } catch (Exception e) {
            throw new IllegalArgumentException("Error while saving data");
        }
    }
}

