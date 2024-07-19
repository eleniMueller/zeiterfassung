package ch.axa.ita.zeiterfassungbackend.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalTime;

/**
 * ZeiterfassungBackend
 * ch.axa.ita.zeiterfassungbackend.entity
 *
 * @author Eleni
 * @version 17.07.2024
 */

@Entity
@Data
public class SeviVersion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "rfid")
    private String rfid;

    @Column(name = "datum")
    private LocalDate datum;

    @Column(name = "badge_ein")
    private LocalTime ein;

    @Column(name = "badge_out")
    private LocalTime out;
}
