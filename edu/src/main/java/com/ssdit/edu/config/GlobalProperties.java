package com.ssdit.edu.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:application.properties")
@ConfigurationProperties
public class GlobalProperties {

	@Value("${application.url}")
	private String applicationUrl;
	
	
	@Value("${yearStartDate}")
	private String startDate;


	@Value("${yearEndDate}")
	private String endDate;
	
	
	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getApplicationUrl() {
		return applicationUrl;
	}

	public void setApplicationUrl(String applicationUrl) {
		this.applicationUrl = applicationUrl;
	}

	@Override
	public String toString() {
		return "GlobalProperties [applicationUrl=" + applicationUrl + ", startDate=" + startDate + ", endDate="
				+ endDate + "]";
	}

		
}
