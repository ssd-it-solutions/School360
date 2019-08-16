package com.ssdit.edu.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.List;

import org.springframework.stereotype.Component;

import au.com.bytecode.opencsv.CSVReader;
import au.com.bytecode.opencsv.bean.ColumnPositionMappingStrategy;
import au.com.bytecode.opencsv.bean.CsvToBean;

@Component
public class CsvParser {
	
	public <T> List<T> parseCSVtoBeanGeneric (Class clazz, File file,String[] columns ) {

		List<T> activityList = null;
		try {

			CSVReader reader = new CSVReader(new FileReader(file), ',', '\"', 1);

			ColumnPositionMappingStrategy<T> mappingStrategy = new ColumnPositionMappingStrategy<T>();
			mappingStrategy.setType(clazz);
			mappingStrategy.setColumnMapping(columns);
			CsvToBean<T> csv = new CsvToBean<T>();

			activityList = csv.parse(mappingStrategy, reader);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		return activityList;
	}
}
