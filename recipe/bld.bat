set CUDA_INC_PATH=%CUDA_PATH%\include
if errorlevel 1 exit 1

%PYTHON% configure.py --enable-shared
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
