package com.example.springboot.controller.request;

import lombok.Data;
import org.yaml.snakeyaml.representer.BaseRepresenter;
@Data
public class UserPageRequest extends BaseRequest {
    private String name;
    private String phone;
}
