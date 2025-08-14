package com.pm.patientservice.model;

import com.pm.patientservice.dto.PatientResponseDTO;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.UUID;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @NotBlank
    private String name;

    @Email
    @Column(unique = true)
    private String email;

    @Column(unique = true)
    private String phone;

    private String username;

    private LocalDate dateOfBirth;


    private String address;

    private String password;

    private LocalDate registeredDate;


}
