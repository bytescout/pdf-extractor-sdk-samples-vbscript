## How to extract table structure from PDF in VBScript using ByteScout PDF Extractor SDK

### How to extract table structure from PDF in VBScript

Source code documentation samples provide quick and easy way to add a required functionality into your application. ByteScout PDF Extractor SDK: the Software Development Kit (SDK) that is designed to help developers with data extraction from unstructured documents like pdf, tiff, scans, images, scanned and electronic forms. The library is powered by OCR, computer vision and AI to provide unique functionality like table detection, automatic table structure extraction, data restoration, data restructuring and reconstruction. Supports PDF, TIFF, PNG, JPG images as input and can output CSV, XML, JSON formatted data. Includes full set of utilities like pdf splitter, pdf merger, searchable pdf maker. It can extract table structure from PDF in VBScript.

This rich sample source code in VBScript for ByteScout PDF Extractor SDK includes the number of functions and options you should do calling the API to extract table structure from PDF. This VBScript sample code is all you need for your app. Just copy and paste the code, add references (if needs to) and you are all set! Use of ByteScout PDF Extractor SDK in VBScript is also explained in the documentation included along with the product.

You can download free trial version of ByteScout PDF Extractor SDK from our website to see and try many others source code samples for VBScript.

## REQUEST FREE TECH SUPPORT

[Click here to get in touch](https://bytescout.zendesk.com/hc/en-us/requests/new?subject=ByteScout%20PDF%20Extractor%20SDK%20Question)

or just send email to [support@bytescout.com](mailto:support@bytescout.com?subject=ByteScout%20PDF%20Extractor%20SDK%20Question) 

## ON-PREMISE OFFLINE SDK 

[Get Your 60 Day Free Trial](https://bytescout.com/download/web-installer?utm_source=github-readme)
[Explore SDK Docs](https://bytescout.com/documentation/index.html?utm_source=github-readme)
[Sign Up For Online Training](https://academy.bytescout.com/)


## ON-DEMAND REST WEB API

[Get your API key](https://pdf.co/documentation/api?utm_source=github-readme)
[Explore Web API Documentation](https://pdf.co/documentation/api?utm_source=github-readme)
[Explore Web API Samples](https://github.com/bytescout/ByteScout-SDK-SourceCode/tree/master/PDF.co%20Web%20API)

## VIDEO REVIEW

[https://www.youtube.com/watch?v=s28W3_KMraU](https://www.youtube.com/watch?v=s28W3_KMraU)




<!-- code block begin -->

##### ****ExtractTabledStructure.vbs:**
    
```
' Create Bytescout.PDFExtractor.StructuredExtractor object
Set extractor = CreateObject("Bytescout.PDFExtractor.StructuredExtractor")

extractor.RegistrationName = "demo"
extractor.RegistrationKey = "demo"

' Load sample PDF document
extractor.LoadDocumentFromFile "../../sample3.pdf"
           
For ipage = 0 To extractor.GetPageCount() - 1 

    ' starting extraction from page #"
    extractor.PrepareStructure ipage

    rowCount = extractor.GetRowCount(ipage)
    
    For row = 0 To rowCount - 1 
        columnCount = extractor.GetColumnCount(ipage, row)

        For col = 0 To columnCount-1
            WScript.Echo "Cell at page #" +CStr(ipage) + ", row=" & CStr(row) & ", column=" & _
                CStr(col) & vbCRLF & extractor.GetCellValue(ipage, row, col)
        Next
    Next
Next


```

<!-- code block end -->