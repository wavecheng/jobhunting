package com.citrix.apac.recruiting.helper;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.BAD_REQUEST)
public class ConstraintViolationException extends RuntimeException {
	public ConstraintViolationException(String msg){
		super("Data violation error: " + msg);
	}
}
