package com.ssdit.edu.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class AttchmentsUtils {

	private static Logger LOG = LoggerFactory.getLogger(AttchmentsUtils.class);
	
	/**
	 * method to compress byte array into gZip byte array
	 * 
	 * @param breArrayOfFile
	 * @return
	 */
	public byte[] compressByteArrayToGZipByteArray(byte[] breArrayOfFile) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		try {
			GZIPOutputStream zos = new GZIPOutputStream(baos);
			zos.write(breArrayOfFile);
			zos.close();
		} catch (IOException e) {
			LOG.error("IOException occurred");
		}
		return baos.toByteArray();
	}
	
	/**
	 * method to uncompress gZip byte array into String byte array
	 * 
	 * @param breArrayOfFile
	 * @return
	 */
	public byte[] uncompressGZipByteArrayToByteArray(byte[] breArrayOfFile) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] tmpBuffer = new byte[4096];
		int len;
		try {
			ByteArrayInputStream bais = new ByteArrayInputStream(breArrayOfFile);
			GZIPInputStream zis = new GZIPInputStream(bais);

			while ((len = zis.read(tmpBuffer)) >= 0) {
				baos.write(tmpBuffer, 0, len);
			}
			zis.close();
		} catch (IOException e) {
			LOG.error("IOException occurred");
		}

		return baos.toByteArray();
	}
	
	/** Function to convert file size from Bytes to appropriate size (B or KB or MB) 
	 * 
	 * @param sizeInBytes
	 * @return
	 */
	public String convertToAppropriateSize(long sizeInBytes) {
		String modifiedFileSize = "0B";
			double fileSize = sizeInBytes;
		if (fileSize > 0) {
			if (fileSize < 1024) {
				modifiedFileSize = String.valueOf(fileSize).concat("B");
			} else if (fileSize > 1024 && fileSize < (1024 * 1024)) {
				modifiedFileSize = String.valueOf(Math.round((fileSize / 1024 * 100.0)) / 100.0).concat("KB");
			} else {
				modifiedFileSize = String.valueOf(Math.round((fileSize / (1024 * 1204) * 100.0)) / 100.0).concat("MB");
			}
		}
		return modifiedFileSize;
	}
}
