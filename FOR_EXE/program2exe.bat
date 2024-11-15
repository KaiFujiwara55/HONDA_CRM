@REM 開発途中

pip install pipenv

cd C:/Users/info/python_program/HONDA_CRM/

@REM Pipfileを元にしてPython環境を作成
pipenv install

@REM python環境に入る
pipenv shell

@REM プログラムをexe化
pyinstall ./PROGRAM/init_program_data.py --onefile
pyinstall ./PROGRAM/mail_win32com.py --onefile

@REM python環境から抜ける
exit

@REM 仮想環境を削除
pipenv --rm
