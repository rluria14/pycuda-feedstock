echo CUDA_HOME: %CUDA_HOME%
echo CUDA_PATH: %CUDA_PATH%

set CUDA_PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v%cuda_compiler_version%
set CUDA_LIB_PATH=%CUDA_PATH%\lib


%PYTHON% configure.py --enable-shared
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
