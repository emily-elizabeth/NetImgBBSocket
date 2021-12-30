#tag Class
Protected Class NetImgBBResults
	#tag Method, Flags = &h0
		Sub Constructor(json As JSONItem)
		  DIM data As JSONItem = json.Value("data")
		  if (data.HasKey("id")) then me.mID = data.Value("id")
		  if (data.HasKey("title")) then me.mTitle = data.Value("title")
		  if (data.HasKey("url_viewer")) then me.mURLViewer = data.Value("url_viewer")
		  if (data.HasKey("url")) then me.mURL = data.Value("url")
		  if (data.HasKey("display_url")) then me.mDisplayURL = data.Value("display_url")
		  if (data.HasKey("size")) then me.mSize = data.Value("size")
		  if (data.HasKey("time")) then me.mTime = data.Value("time") // what format is this in?
		  if (data.HasKey("expiration")) then me.mExpiration = data.Value("expiration")
		  if (data.HasKey("delete_url")) then me.mDeleteURL = data.Value("delete_url")
		  
		  if (data.HasKey("image")) then
		    DIM imageJSON As JSONItem = data.Value("image")
		    if (imageJSON.HasKey("filename")) then me.mImageFileName = imageJSON.Value("filename")
		    if (imageJSON.HasKey("name")) then me.mImageName = imageJSON.Value("name")
		    if (imageJSON.HasKey("mime")) then me.mImageMIME = imageJSON.Value("mime")
		    if (imageJSON.HasKey("extension")) then me.mImageExtension = imageJSON.Value("extension")
		    if (imageJSON.HasKey("url")) then me.mImageURL = imageJSON.Value("url")
		  end if
		  
		  if (data.HasKey("thumb")) then
		    DIM thumbJSON As JSONItem = data.Value("thumb")
		    if (thumbJSON.HasKey("filename")) then me.mThumbnailFileName = thumbJSON.Value("filename")
		    if (thumbJSON.HasKey("name")) then me.mThumbnailName = thumbJSON.Value("name")
		    if (thumbJSON.HasKey("mime")) then me.mThumbnailMIME = thumbJSON.Value("mime")
		    if (thumbJSON.HasKey("extension")) then me.mThumbnailExtension = thumbJSON.Value("extension")
		    if (thumbJSON.HasKey("url")) then me.mThumbnailURL = thumbJSON.Value("url")
		  end if
		  
		  if (data.HasKey("medium")) then
		    DIM mediumJSON As JSONItem = data.Value("medium")
		    if (mediumJSON.HasKey("filename")) then me.mMediumFileName = mediumJSON.Value("filename")
		    if (mediumJSON.HasKey("name")) then me.mMediumName = mediumJSON.Value("name")
		    if (mediumJSON.HasKey("mime")) then me.mMediumMIME = mediumJSON.Value("mime")
		    if (mediumJSON.HasKey("extension")) then me.mMediumExtension = mediumJSON.Value("extension")
		    if (mediumJSON.HasKey("url")) then me.mMediumURL = mediumJSON.Value("url")
		  end if
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mDeleteURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		DeleteURL As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mDisplayURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		DisplayURL As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mExpiration
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		Expiration As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mID
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ID As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mImageExtension
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ImageExtension As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mImageFileName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ImageFileName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mImageMIME
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ImageMime As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mImageName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ImageName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mImageURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ImageURL As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDeleteURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDisplayURL As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mMediumExtension
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		MediumExtension As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mMediumFileName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		MediumFileName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mMediumMIME
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		MediumMIME As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mMediumName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		MediumName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mMediumURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		MediumURL As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mExpiration As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mID As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageExtension As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageFileName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageMIME As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMediumExtension As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMediumFileName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMediumMIME As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMediumName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMediumURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThumbnailExtension As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThumbnailFileName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThumbnailMIME As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThumbnailName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThumbnailURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTime As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTitle As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mURLViewer As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		Size As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mThumbnailExtension
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ThumbnailExtension As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mThumbnailFileName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ThumbnailFileName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mThumbnailMIME
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ThumbnailMIME As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mThumbnailName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ThumbnailName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mThumbnailURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		ThumbnailURL As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mTime
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		Time As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		Title As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		URL As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.mURLViewer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Unused value
			End Set
		#tag EndSetter
		URLViewer As String
	#tag EndComputedProperty


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
			Name="ImageName"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URLViewer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Time"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Expiration"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DeleteURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageExtension"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageFileName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageMime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumExtension"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumFileName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumMIME"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbnailExtension"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbnailFileName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbnailMIME"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbnailName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbnailURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
