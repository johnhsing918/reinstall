# Secure Reinstall Script

🌐 **Languages**: [中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

---

これは [bin456789/reinstall](https://github.com/bin456789/reinstall) プロジェクトを基に修正した、**安全確認機能付き** のシステム再インストールスクリプトです。  
実行前にユーザーに **`YES`** と入力させ、誤操作を防ぎます。

---

## ⚠️ 重要な警告

- **これは高リスクスクリプトです！**  
  実行するとサーバーの **システムが再インストールされ、ディスク上のデータが消去される** 可能性があります。  
- 実行する前に、**必ず内容を理解していること** を確認してください。  
- 本番環境や重要なデータがあるサーバーでは使用を推奨しません。  

---

## 🚀 使用方法

以下のコマンドを直接実行してください：

```bash
bash <(curl -sL https://raw.githubusercontent.com/johnhsing918/reinstall/main/reinstall.sh)
