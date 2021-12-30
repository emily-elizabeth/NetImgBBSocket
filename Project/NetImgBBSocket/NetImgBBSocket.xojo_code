#tag Class
Protected Class NetImgBBSocket
Inherits URLConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  if (HTTPStatus = 200) then // everything is good
		    DIM result As NEW NetImgBBResults(NEW JSONItem(content))
		    RaiseEvent ImageResultsReceived result
		    
		  else // some kind of error
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function MIMEType(fTarget as FolderItem) As String
		  var arsParts() as String = fTarget.Name.Split("")
		  var sExtension as String = arsParts(arsParts.LastIndex)
		  
		  select case sExtension
		    
		  case "jpg"
		    return "image/jpeg"
		    
		  case "jpeg"
		    return "image/jpeg"
		    
		  case "png"
		    return "image/png"
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutImage(fImage as FolderItem)
		  if (me.APIKey.IsEmpty) then
		    Raise NEW RuntimeException("No API key", 1)
		  else
		    var dictData as new Dictionary
		    dictData.Value("image") = fImage
		    
		    me.SetFormData(dictData)
		    
		    // Send the request
		    me.Send("POST", "https://api.imgbb.com/1/upload?key=" + me.APIKey)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetFormData(FormData as Dictionary)
		  // Adapted and updated from
		  // https://www.boredomsoft.org/file-uploads-form-encodings-and-xojo.bs
		  
		  // Generate a boundary
		  var sBoundary as String = "--" + EncodeHex(MD5(System.Microseconds.ToString)).Right(24) + "-bOuNdArY"
		  
		  static CRLF as String = EndOfLine.Windows
		  
		  var data as new MemoryBlock(0)
		  var out as new BinaryStream(data)
		  
		  for each key as String in FormData.Keys
		    out.Write("--" + sBoundary + CRLF)
		    
		    if VarType(FormData.Value(Key)) = Variant.TypeString then
		      out.Write("Content-Disposition: form-data; name=""" + key + """" + CRLF + CRLF)
		      out.Write(FormData.Value(key) + CRLF)
		      
		    elseif FormData.Value(Key) isa FolderItem then
		      var file as FolderItem = FormData.Value(key)
		      out.Write("Content-Disposition: form-data; name=""" + key + """; filename=""" + File.Name + """" + CRLF)
		      out.Write("Content-Type: " + MIMEType(file) + CRLF + CRLF)
		      
		      var bs as BinaryStream = BinaryStream.Open(File)
		      out.Write(bs.Read(bs.Length) + CRLF)
		      bs.Close
		      
		    end
		    
		  next
		  
		  out.Write("--" + sBoundary + "--" + CRLF)
		  out.Close
		  
		  me.SetRequestContent(data, "multipart/form-data; boundary=" + sBoundary)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ImageResultsReceived(results As NetImgBBResults)
	#tag EndHook


	#tag Property, Flags = &h0
		APIKey As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowCertificateValidation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPStatusCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="APIKey"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
