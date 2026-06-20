@echo off
echo ==========================================
echo       Starting JChatMind Application
echo ==========================================

echo.
echo [1/3] Checking prerequisites...
echo ------------------------------------------
echo Make sure PostgreSQL and Ollama are running in the background.

echo.
echo [2/3] Starting Spring Boot Backend...
echo ------------------------------------------
start "JChatMind Backend" cmd /c "set JAVA_HOME=C:\Program Files\Java\jdk-17 && cd /d %~dp0jchatmind && mvnw.cmd spring-boot:run"
echo Backend is starting in a new window (port 8080).

echo.
echo [3/3] Starting React Frontend...
echo ------------------------------------------
start "JChatMind Frontend" cmd /c "cd /d %~dp0ui && npm run dev"
echo Frontend is starting in a new window (usually port 5173).

echo.
echo ==========================================
echo Application startup initialized!
echo Wait a few seconds for the services to boot up.
echo ==========================================
pause
