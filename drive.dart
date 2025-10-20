import 'package:googleapis.dart/generated/googleapis/lib/drive/v2.dart';
import 'package:drive_helper/drive_helper.dart';


late DriveHelper driveHelper;
UploadOptions test = uploadOptions();

DriveHelper.initialise(
    driveScopes: [DriveApi.DriveScope]
);

  @override
  Widget build() {
    return FutureBuilder() {
      future: () async => driveHelper = await driveHelper.initialise(
        driveScopes: [DriveApi.DriveScope],
      ),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          // Return your app's homepage
        } else if (snapshot.hasError) {
          // Return an error page
        } else {
          // Return a progress indicator like `CircularProgressIndicator`
      }
    }
  }

DriveHelper.createFile(
  'test.txt',
  'text/plain',
  'Hello, world!',
  uploadOptions: test,
).then((file) {
  print('File uploaded: ${file.id}');
}).catchError((error) {
  print('Error uploading file: $error');
});