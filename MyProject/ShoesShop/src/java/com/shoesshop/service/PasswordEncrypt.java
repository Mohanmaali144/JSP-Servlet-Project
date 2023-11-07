package com.shoesshop.service;

import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

public class PasswordEncrypt {

    public static String encode(String pass) {

        Encoder encoder = Base64.getEncoder();
        pass = "password@1234";
        String enpass = encoder.encodeToString(pass.getBytes());

        System.out.println("Pass  =  " + enpass);

        System.out.println("Pass  =  " + enpass);
        Decoder decoder = Base64.getDecoder();
        byte[] bytes = decoder.decode(enpass);
        System.out.println("agen = " + new String(bytes));

        return enpass;
    }

}
