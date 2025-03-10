/**
* @File Name : blobToStringConverter.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 11, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 11, 2025 |   | Initial Version
**/

// Write a method that accepts a Blob as an input, converts it into a String, and prints it.


public class blobToStringConverter {
	
	public static String blobToStringConverting(Blob data) {
		if(data != null) {
			String str = data.toString();
			return str;
		} else return null;
	}	


}


/* 

output : 

	Blob myBlobData = Blob.valueOf('your data...');
	blobToStringConverter.blobToStringConverting(myBlobData);			// your data ...


 */