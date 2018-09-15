package com.redhat.rhte.cep.kafka.producer;

import com.redhat.rhte.cep.kafka.model.CreditCardTransaction;

/**
 * Service interface for name service.
 * 
 */
public interface MocCreditCardService {

    /**
     * Generate Greetings
     *
     * @return a string greetings
     */
    String generateMessage();
    CreditCardTransaction generateCreditCardTransaction();

}