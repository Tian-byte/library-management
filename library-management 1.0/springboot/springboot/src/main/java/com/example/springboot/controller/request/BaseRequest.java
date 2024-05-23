package com.example.springboot.controller.request;

import lombok.Data;
import org.yaml.snakeyaml.representer.BaseRepresenter;

@Data
public class BaseRequest  {
    private Integer pageNum = 1;
    private Integer pageSize = 10;
}
