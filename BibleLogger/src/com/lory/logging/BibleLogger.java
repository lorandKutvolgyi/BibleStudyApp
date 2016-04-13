package com.lory.logging;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;

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
        Formatter formatterTxt = new SimpleFormatter();
        fileTxt.setFormatter(formatterTxt);
        fileTxt.setLevel(Level.FINEST);
        LOGGER.addHandler(fileTxt);
        LOGGER.setLevel(Level.SEVERE);
    }

    @AfterThrowing("execution(* com.lory..*.*(..)) && !execution(* com.lory.logging..*.*(..))")
    public void log(JoinPoint point) {
        LOGGER.severe("\n*sourceLocation: " + point.getSourceLocation() + "\n*this: " + point.getThis() + "\n*call: "
                + point.getSignature() + getArgs(point) + "\n");
    }

    private String getArgs(JoinPoint point) {
        Object[] args = point.getArgs();
        StringBuilder builder = new StringBuilder();
        for (Object arg : args) {
            builder.append("\n" + arg.toString());
        }
        return builder.toString();
    }
}
