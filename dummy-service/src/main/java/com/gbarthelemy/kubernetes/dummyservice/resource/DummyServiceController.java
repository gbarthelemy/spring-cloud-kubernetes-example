package com.gbarthelemy.kubernetes.dummyservice.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class DummyServiceController {

    @GetMapping(path = "/")
    @ResponseBody
    public String get() throws UnknownHostException {

        final String backLine = "<br/>";
        return "Host: " + InetAddress.getLocalHost().getHostName() + backLine +
                "IP: " + InetAddress.getLocalHost().getHostAddress() + backLine +
                "Type: " + "Dummy service" + backLine;
    }
}
