package com.ssdit.edu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.ssdit.edu.constants.EduConstants;

@SpringBootApplication
public class EduRestApplication {

	private static Logger LOG = LoggerFactory.getLogger(EduRestApplication.class);
	public static void main(String[] args) {
		LOG.info(EduConstants.LOG_LINE);
		SpringApplication.run(EduRestApplication.class, args);
		LOG.info(EduConstants.LOG_LINE);
		LOG.info(EduConstants.STARTING_LINE);
		LOG.info(EduConstants.LOG_LINE);
	}
}
