echo CUDA_HOME: %CUDA_HOME%
echo CUDA_PATH: %CUDA_PATH%

set CUDA_LIB_PATH=%CUDA_PATH%\lib\x64


%PYTHON% configure.py --enable-shared
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
