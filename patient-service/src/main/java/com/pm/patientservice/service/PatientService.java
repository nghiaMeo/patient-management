package com.pm.patientservice.service;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResponseDTO;
import com.pm.patientservice.exception.EmailAlreadyExistsException;
import com.pm.patientservice.exception.PatientNotFoundException;
import com.pm.patientservice.exception.PhoneAlreadyExistsException;
import com.pm.patientservice.mapper.PatientMapper;
import com.pm.patientservice.model.Patient;
import com.pm.patientservice.repository.PatientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.UUID;


@Service
@RequiredArgsConstructor
public class PatientService {

    private final PatientRepository patientRepository;
    private final PatientMapper patientMapper;


    public PatientResponseDTO getPatientById(UUID id) {
        Patient patient = patientRepository.findById(id)
                .orElseThrow(() -> new PatientNotFoundException("Patient not found"));

        return patientMapper.toPatientResponseDTO(patient);
    }

    public List<PatientResponseDTO> getPatients() {
        List<Patient> patients = (List<Patient>) patientRepository.findAll();

        return patients.stream()
                .map(patientMapper::toPatientResponseDTO).toList();

    }

    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO) {

        if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
            throw new EmailAlreadyExistsException("A patient with this email "
                    + "already exists " + patientRequestDTO.getEmail());

        }
        Patient newPatient = patientRepository.save(patientMapper.toModel(patientRequestDTO));

        return patientMapper.toPatientResponseDTO(newPatient);
    }

    public PatientResponseDTO updatePatient(UUID id, PatientRequestDTO patientRequestDTO) {
        Patient patient = patientRepository.findById(id)
                .orElseThrow(() -> new PatientNotFoundException("Patient not found with ID: " + id));

        var emailRequestDTO = patientRequestDTO.getEmail();
        if (emailRequestDTO != null && !emailRequestDTO.equals(patient.getEmail())) {
            if (patientRepository.existsByEmail(emailRequestDTO)) {
                throw new EmailAlreadyExistsException("A patient with this email already exists ");
            }
        }

        var phoneRequestDTO = patientRequestDTO.getPhone();
        if (phoneRequestDTO != null && !phoneRequestDTO.equals(patient.getPhone())) {
            if (patientRepository.existsByPhone(phoneRequestDTO)) {
                throw new PhoneAlreadyExistsException("A patient with this phone already exists ");
            }
        }

        patientMapper.updatePatientFromDTO(patientRequestDTO, patient);

        Patient updatedPatient = patientRepository.save(patient);
        return patientMapper.toPatientResponseDTO(updatedPatient);
    }
}
