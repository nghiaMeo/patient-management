package com.pm.patientservice.configure;


import billing.BillingServiceGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GrpcClientConfig {

    @Bean
    public ManagedChannel billingServiceGrpcChannel(
            @Value("${billing.service.address:localhost}") String serverAddress,
            @Value("${billing.service.grpc.port:9001}") int serverPort
    ) {
        return ManagedChannelBuilder
                .forAddress(serverAddress, serverPort)
                .usePlaintext()
                .build();

    }

    @Bean
    public BillingServiceGrpc.BillingServiceBlockingStub billingServiceBlockingStub(
            ManagedChannel billingServiceGrpcChannel) {
        return BillingServiceGrpc.newBlockingStub(billingServiceGrpcChannel);
    }
}
