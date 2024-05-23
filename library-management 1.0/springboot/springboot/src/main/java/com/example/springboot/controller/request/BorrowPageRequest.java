package com.example.springboot.controller.request;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class BorrowPageRequest  extends BaseRequest{
    private String bookName;
    private String bookNo;
    private String userName;
    private String name;
}
