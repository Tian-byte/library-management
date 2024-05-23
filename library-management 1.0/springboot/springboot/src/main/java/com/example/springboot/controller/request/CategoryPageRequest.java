package com.example.springboot.controller.request;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class CategoryPageRequest extends BaseRequest{
    private String name;
    private String remark;
}
