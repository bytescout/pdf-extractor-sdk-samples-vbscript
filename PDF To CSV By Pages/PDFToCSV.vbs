'****************************************************************************'
'                                                                            '
' Download evaluation version: https://bytescout.com/download/web-installer  '
'                                                                            '
' Signup Cloud API free trial: https://secure.bytescout.com/users/sign_up    '
'                                                                            '
' Copyright © 2017 ByteScout Inc. All rights reserved.                       '
' http://www.bytescout.com                                                   '
'                                                                            '
'****************************************************************************'


' Create Bytescout.PDFExtractor.CSVExtractor object
Set extractor = CreateObject("Bytescout.PDFExtractor.CSVExtractor")

extractor.RegistrationName = "demo"
extractor.RegistrationKey = "demo"

' Load sample PDF document
extractor.LoadDocumentFromFile "../../sample3.pdf"

'extractor.CSVSeparatorSymbol = "," ' you can change CSV separator symbol (if needed) from "," symbol to another if needed for non-US locales

' Get page count
pageCount = extractor.GetPageCount()
		
For i = 0 To pageCount - 1
	fileName = "page" & i & ".csv"

	' Save extracted page text to file
	extractor.SavePageCSVToFile i, fileName
Next

MsgBox "Data has been extracted to 'page0.csv' and other files."

