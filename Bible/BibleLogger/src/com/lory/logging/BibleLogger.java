package com.lory.logging;

import java.io.IOException;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class BibleLogger {
	private final static Logger LOGGER = LoggerFactory.getLogger(BibleLogger.class);

	@Pointcut("(execution(public * com.lory.biblereader..*.*(..)) && !execution(* com.lory.biblereader..*.toString(..))) && !execution(* *..*Test.*(..))")
	public void publicMethodExecution() {
	}

	@Pointcut("(execution(* com.lory.biblereader..*.*(..)) && !execution(* com.lory.biblereader..*.toString(..))) && !execution(* *..*Test.*(..))")
	public void methodExecution() {
	}

	@Before(value = "publicMethodExecution()")
	public void debugLog(JoinPoint point) throws IOException {
		LOGGER.debug(getMethodCallDetails(point));
	}

	@AfterThrowing(value = "methodExecution()", throwing = "throwable")
	public void productLog(JoinPoint point, Throwable throwable) {
		LOGGER.error(getMethodCallDetails(point));
		LOGGER.error(getThrowableDetails(throwable));
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
			if (arg instanceof String && ((String) arg).length() > 100) {
				arg = ((String) arg).substring(0, 101) + "...";
			}
			builder.append("\n" + (arg != null ? arg.toString() : "null"));
		}
		return builder.toString();
	}
}
