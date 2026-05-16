@echo off
chcp 65001 >nul
echo ================================================
echo   喜乐姐真蚕丝喜被 MCP 服务 启动脚本
echo ================================================
echo.

REM 检查是否已安装依赖
pip show fastapi >nul 2>&1
if errorlevel 1 (
    echo 正在安装依赖...
    pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
    echo.
)

echo 启动服务中...
echo 启动后打开浏览器访问: http://127.0.0.1:8000/docs
echo 按 Ctrl+C 停止服务
echo.
python main.py
pause
