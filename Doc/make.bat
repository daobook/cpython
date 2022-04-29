@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

call ..\PCbuild\find_python.bat %PYTHON%

if not defined PYTHON set PYTHON=py

if not defined SPHINXBUILD (
    %PYTHON% -c "import sphinx" > nul 2> nul
    if errorlevel 1 (
        echo Installing sphinx with %PYTHON%
        %PYTHON% -m pip install -r requirements.txt
        if errorlevel 1 exit /B
    )
    set SPHINXBUILD=%PYTHON% -c "import sphinx.cmd.build, sys; sys.exit(sphinx.cmd.build.main())"
)

%PYTHON% -c "import python_docs_theme" > nul 2> nul
if errorlevel 1 (
    echo Installing python-docs-theme with %PYTHON%
    %PYTHON% -m pip install python-docs-theme
    if errorlevel 1 exit /B
)

if not defined BLURB (
    %PYTHON% -c "import blurb" > nul 2> nul
    if errorlevel 1 (
        echo Installing blurb with %PYTHON%
        rem Should have been installed with Sphinx earlier
        %PYTHON% -m pip install blurb
        if errorlevel 1 exit /B
    )
    set BLURB=%PYTHON% -m blurb
)
set SOURCEDIR=.
set BUILDDIR=build

if not defined SPHINXLINT (
    %PYTHON% -c "import sphinxlint" > nul 2> nul
    if errorlevel 1 (
        echo Installing sphinx-lint with %PYTHON%
        rem Should have been installed with Sphinx earlier
        %PYTHON% -m pip install sphinx-lint
        if errorlevel 1 exit /B
    )
    set SPHINXLINT=%PYTHON% -m sphinxlint
)

if "%1" NEQ "htmlhelp" goto :skiphhcsearch
if exist "%HTMLHELP%" goto :skiphhcsearch

rem Search for HHC in likely places
set HTMLHELP=
where hhc /q && set "HTMLHELP=hhc" && goto :skiphhcsearch
where /R ..\externals hhc > "%TEMP%\hhc.loc" 2> nul && set /P HTMLHELP= < "%TEMP%\hhc.loc" & del "%TEMP%\hhc.loc"
if not exist "%HTMLHELP%" where /R "%ProgramFiles(x86)%" hhc > "%TEMP%\hhc.loc" 2> nul && set /P HTMLHELP= < "%TEMP%\hhc.loc" & del "%TEMP%\hhc.loc"
if not exist "%HTMLHELP%" where /R "%ProgramFiles%" hhc > "%TEMP%\hhc.loc" 2> nul && set /P HTMLHELP= < "%TEMP%\hhc.loc" & del "%TEMP%\hhc.loc"
if not exist "%HTMLHELP%" (
    echo.
    echo.The HTML Help Workshop was not found.  Set the HTMLHELP variable
    echo.to the path to hhc.exe or download and install it from
    echo.http://msdn.microsoft.com/en-us/library/ms669985
    exit /B 1
)
:skiphhcsearch

if not defined DISTVERSION for /f "usebackq" %%v in (`%PYTHON% tools/extensions/patchlevel.py`) do set DISTVERSION=%%v

if not defined BUILDDIR set BUILDDIR=build

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:htmlview
if NOT "%2" EQU "" (
    echo.Can't specify filenames to build with htmlview target, ignoring.
)
cmd /C %this% html

if EXIST "%BUILDDIR%\html\index.html" (
    echo.Opening "%BUILDDIR%\html\index.html" in the default web browser...
    start "" "%BUILDDIR%\html\index.html"
)

goto end

:check
cmd /S /C "%SPHINXLINT% -i tools"
goto end

:serve
cmd /S /C "%PYTHON% ..\Tools\scripts\serve.py "%BUILDDIR%\html""
goto end

:end
popd
