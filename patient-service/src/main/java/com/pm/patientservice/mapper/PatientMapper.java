package com.pm.patientservice.mapper;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResponseDTO;
import com.pm.patientservice.model.Patient;
import org.mapstruct.*;


@Mapper(componentModel = "spring")
public interface PatientMapper {

    @Mapping(target = "registeredDate", expression = "java(java.time.LocalDate.now())")
    Patient toModel(PatientRequestDTO dto);

    PatientResponseDTO toPatientResponseDTO(Patient patient);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    @Mapping(target = "registeredDate", ignore = true)
    void updatePatientFromDTO(PatientRequestDTO dto, @MappingTarget Patient patient);
}
