package com.lory.logging;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class BibleLogger {
    private final static Logger LOGGER = Logger.getLogger(BibleLogger.class.getName());
    private static FileHandler fileTxt;

    static {
        try {
            fileTxt = new FileHandler("bible_logging.txt");
        } catch (SecurityException | IOException e) {
            System.exit(1);
        }
        fileTxt.setFormatter(new SimpleFormatter());
        fileTxt.setLevel(Level.FINEST);
        LOGGER.addHandler(fileTxt);
        LOGGER.setLevel(Level.SEVERE);
    }

    @Pointcut("execution(public * com.lory.biblereader..*.*(..)) && !execution(* com.lory.biblereader.logging..*.*(..)) && !execution(* com.lory.biblereader..*.toString(..))")
    public void publicMethodExecution() {}

    @Pointcut("execution(* com.lory.biblereader..*.*(..)) && !execution(* com.lory.biblereader.logging..*.*(..)) && !execution(* com.lory.biblereader..*.toString(..))")
    public void methodExecution() {}

    @Before(value = "publicMethodExecution()")
    public void debugLog(JoinPoint point) {
        LOGGER.config(getMethodCallDetails(point));
    }

    @AfterThrowing(value = "methodExecution()", throwing = "throwable")
    public void productLog(JoinPoint point, Throwable throwable) {
        LOGGER.severe(getMethodCallDetails(point));
        LOGGER.severe(getThrowableDetails(throwable));
    }

    private String getMethodCallDetails(JoinPoint point) {
        return "\n*sourceLocation: " + point.getSourceLocation() + "\n*this: " + point.getThis() + "\n*call: "
                + point.getSignature() + getArgs(point) + "\n";
    }

    private String getThrowableDetails(Throwable throwable) {
        return throwable.toString();
    }

    private String getArgs(JoinPoint point) {
        Object[] args = point.getArgs();
        StringBuilder builder = new StringBuilder();
        for (Object arg : args) {
            builder.append("\n" + (arg != null ? arg.toString() : "null"));
        }
        return builder.toString();
    }
}
