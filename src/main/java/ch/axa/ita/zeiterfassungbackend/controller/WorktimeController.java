package ch.axa.ita.zeiterfassungbackend.controller;

import ch.axa.ita.zeiterfassungbackend.entity.SeviVersion;
import ch.axa.ita.zeiterfassungbackend.service.SeviService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * ZeiterfassungBackend
 * ch.axa.ita.zeiterfassungbackend.controller
 *
 * @author Eleni
 * @version 17.07.2024
 */

@RestController
@CrossOrigin(origins = "*")
public class SeviController {

    @Autowired
    private SeviService seviService;

    @PostMapping("/sevi")
    public SeviVersion createWorktimeEntry(@RequestBody String rfidJson) {
        try {
            String rfid = new JSONObject(rfidJson).getString("rfid");
            if (rfid.isEmpty()) {
                throw new IllegalArgumentException("RFID is missing");
            }
            return seviService.saveRfidData(rfid);
        } catch (Exception e) {
            throw new IllegalArgumentException("Something went wrong");
        }

    }
}
