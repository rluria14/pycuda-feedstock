echo CUDA_HOME: %CUDA_HOME%
echo CUDA_PATH: %CUDA_PATH%
for /r %i in (cuda.lib) do echo  %~ti %~zi %i

set CUDA_LIB_PATH=%CUDA_PATH%\lib64


%PYTHON% configure.py --enable-shared
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
