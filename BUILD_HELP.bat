@echo off
echo ==========================================
echo AliClicker Mobile - Build Script
echo ==========================================
echo.

:: Check for Java
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Java not found. Please install JDK 11 or 17.
    pause
    exit /b
)

:: Check for Android SDK
if "%ANDROID_HOME%"=="" (
    echo [WARNING] ANDROID_HOME environment variable is not set.
    echo Trying to find SDK in default location...
    if exist "%LOCALAPPDATA%\Android\Sdk" (
        set ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk
        echo Found SDK at: %ANDROID_HOME%
    ) else (
        echo [ERROR] Android SDK not found.
        echo Please install Android Studio or the Command Line Tools.
        pause
        exit /b
    )
)

echo.
echo [INFO] Starting build with Gradle...
echo.

:: Note: We don't have gradlew here because we created the project structure manually.
:: In a real scenario, you'd run 'gradle init' or have a template.
:: Since we are in a limited environment, we advise the user to use Android Studio.

echo To generate the APK, follow these steps:
echo 1. Open the 'android' folder in Android Studio.
echo 2. Let it sync and download Gradle.
echo 3. Click 'Build' -> 'Build APK'.
echo.
pause
