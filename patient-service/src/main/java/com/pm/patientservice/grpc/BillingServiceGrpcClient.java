package com.pm.patientservice.grpc;

import billing.BillingRequest;
import billing.BillingResponse;
import billing.BillingServiceGrpc;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class BillingServiceGrpcClient {

    //    @GrpcClient("billing-service")
    private final BillingServiceGrpc.BillingServiceBlockingStub billingServiceBlockingStub;


    public BillingResponse createBillingAccount(String patientId, String name, String email,
                                                String phone, String username, String dob) {
        BillingRequest request = BillingRequest
                .newBuilder()
                .setPatientId(patientId)
                .setName(name)
                .setEmail(email)
                .setUsername(username)
                .setDateOfBirth(dob)
                .build();
        BillingResponse response = billingServiceBlockingStub.createBillingAccount(request);
        log.info(response.toString());
        return response;
    }

}
