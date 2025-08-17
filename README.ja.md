Secure Reinstall Script

Languages: 中文 (README.txt) | English (README.en.txt) | 日本語

これは安全確認機能付きのシステム再インストールスクリプトで、bin456789/reinstall プロジェクトを基に修正しています。
実行前にユーザーは "YES" と入力する必要があり、誤操作を防ぎます。

重要な警告:

- これは高リスクスクリプトです！
- 実行するとサーバーのシステムが再インストールされ、ディスク上のデータが消去される可能性があります。
- 実行する前に、必ず内容を理解していることを確認してください。
- 本番環境や重要なデータがあるサーバーでは使用を推奨しません。

使用方法:

以下のコマンドを直接実行してください：
bash <(curl -sL https://raw.githubusercontent.com/johnhsing918/reinstall/main/reinstall.sh)

感謝:
- オリジナルプロジェクト: bin456789/reinstall
