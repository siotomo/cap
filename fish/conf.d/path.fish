# mysqlに使用するopensslをLIBRARY_PATHに通す
set LIBRARY_PATH /usr/local/opt/openssl/lib/ $LIBRARY_PATH
set LIBRARY_PATH /usr/local/opt/mysql@5.7/lib $LIBRARY_PATH

# anyenvの初期化
status --is-interactive; and source (anyenv init -|psub)
