set PATH=%PATH%;%CD%;%~dp0;
set PATH=%PATH%;%~dp0\..\PythonAnaconda2;%~dp0\..\PythonAnaconda2\Scripts;
set PATH=%PATH%;%~dp0\speaker-recognition-master\src
pause
cls
set QT_API=pyqt5

rem TRAIN
python ./src/speaker-recognition.py -t enroll -i "../_inbrucelee/ ../_inghe/ ../_inmurphy2/ ../_intrump/" -m ../sounds.model
pause
rem RECOGNIZE
python ./src/speaker-recognition.py -t predict -i "../_test/*.wav" -m ../sounds.model
pause
