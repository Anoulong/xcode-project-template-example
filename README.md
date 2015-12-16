# Xcode Project Template: Quickstarts 
Guide on how to create a customized Xcode Project Template

All the documentation in this page show how to use/create/edit/manage Apple's IDE Xcode project template to start a project with a customized project template.

 When starting a new iOS project several necessary classes and files are manually import into the project. To accelerate the process, Xcode provides functionality to create file project templates. In this page, I will show how to use an existing template and how to edit it.


## Create Template from an existing one

1. Let's start by getting a copy of an existing Xcode project template to use as a base. Open finder, go to Applications and right click on Xcode to show package contents.
2. Navigate to Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/Application/. Then Copy (do not cut/paste!) one of the listed templates e.g. Single View Application.xctemplate
3. Open another finder window and navigate to the following directory (to unhide your Library folder type this cmd in terminal: chflags nohidden ~/Library/ or select press the alt/option key when clicking on Finder/Go) /Library/Developer/Xcode/Templates (you may need to create this folder if not already present) /Project Templates/
4. Create a folder in here. Call it whatever you wish, a suggestion is your company name. This name appears in the left hand menu of the new project dialogue in Xcode.
5. Paste the project template in here and change its folder name to whatever you wish e.g. Model-View-Controller Application.xctemplate . We are not done yet though as we need to change the template's identifier. Otherwise it will not appear in the Xcode new project dialogue window.
6. Open the TemplateInfo.plist file with an Text Editor such as Sublime/TextEdit OR Double-click it will open with Xcode Plist Editor. Search for the Identifier key. Either way, you should see a string value something similar to "com.apple.dt.unit.XXXXXX". Replace this with whatever you wish as long as its unique. I again suggest adding your company name and a name that describes the template.
7. If you now open Xcode you should see the project template appearing under your company name in the new project dialogue. 

## Customizing Template 

At the moment you have a copy of an existing project template which is not very useful. We have a number of classes that get reused in nearly all our projects. Now we will include them into this template.

1. Let's browse into the custom template directory(i.e. navigate to /Library/Developer/Xcode/Templates/Project Template/name/Model-View-Controller Application.xctemplate) and copy/paste all files and folders we want to include in the template
2. Open the TemplateInfo.plist file with an Text Editor such as Sublime/TextEdit again. Now, we have to tell the TemplateInfo.plist by defining in the xml tag what we want to import here are the steps. See the plist below...

Create a key :
 <key>./LogService.swift</key>
Create path string with same name/;
    <key>Path</key>
    <string>./LogService.swift</string>
Create the group :
   <key>Group</key>
   <array>
       <string>Services</string>
   </array>
Add the associated node:

<key>Nodes</key>
  <array>
     <string>./LogService.swift</string>
... 

</array>

-----------------------------------------

Update Cocoapod

You can update the default cocoapod

 

<!-- CocoaPod Create Prodfile Begin -->
<key>Definitions</key>
<dict>
<key>../Podfile</key>
<string>platform :ios, "8.0"
use_frameworks!

target '___PACKAGENAME___' do
pod 'Alamofire', '2.0.2'
pod 'SwiftyJSON', '2.3.0'
pod 'ObjectMapper', '~> 0.17'
end

target '___PACKAGENAME___Tests' do

end
</string>
</dict>
<!-- CocoaPod Create Prodfile End -->


NOTE : You can change the template image by copy/paste an image, delete the existing one and rename the newly imported image to TemplateIcon.tiff
