# nytimestest

Assignment test for flutter job position.

### Running the app

To run this app you need to be downloaded Android studio, Flutter  sdk(3.13.2):

* Clone the project to android studio.
* Run `Flutter pub get` in android studio terminal.
* Run the application on Emulator or physical device.

### Running the tests

To run all units test in android studio:

* menu-->Run-->Edit configurations
* Add a new configurations --> Flutter Test
* Configuration:
  - Test scope: All in directory
  - Test directory: (project absolute path)/test.

### Generate code coverage report

To generate code coverage report you need to be downloaded git ([git download link](https://git-scm.com/download/win)):

* Run `flutter test --coverage` in android studio terminal.
* Open git bash in project absolute path as shown:

![image](https://user-images.githubusercontent.com/41840691/234770129-fefc5ad7-ab41-4c8e-adb5-875f6b7e2138.png)


* Run `./genhtml.perl ./coverage/lcov.info -o coverage/html` in git bash window.

Now you can find the report in "(project absolute path)/coverage/html/index.html".











