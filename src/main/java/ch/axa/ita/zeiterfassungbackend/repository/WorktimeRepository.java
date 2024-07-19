package ch.axa.ita.zeiterfassungbackend.repository;

import ch.axa.ita.zeiterfassungbackend.entity.SeviVersion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

/**
 * ZeiterfassungBackend
 * ch.axa.ita.zeiterfassungbackend.repository
 *
 * @author Eleni
 * @version 17.07.2024
 */

@Repository
public interface SeviRepository extends JpaRepository<SeviVersion, Long> {

    List<SeviVersion> findByRfidAndDatum(String rfid, LocalDate currentDate);
}
