package com.note.exception;
public class BusinessException extends RuntimeException {

    public BusinessException() {}
    private int code;
    public BusinessException(int code, String message) {
        super(message);
        this.code = code;
    }
    public BusinessException(String message) {
        this(400, message);
    }

    public int getCode() { return code; }
    public void setCode(int code) { this.code = code; }
}
