# Secure Reinstall Script

🌐 **Languages**: [中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

---

這是一份 **帶安全確認機制** 的系統重裝腳本，基於 [bin456789/reinstall](https://github.com/bin456789/reinstall) 專案修改。  
在執行前，會要求使用者輸入 **`YES`** 才會繼續，以避免誤操作。

---

## ⚠️ 重要警告

- **這是高風險腳本！**  
  執行後可能會導致伺服器 **系統被重裝、磁碟資料清空**。  
- 請務必 **確認你知道自己在做什麼** 才執行。  
- 不建議在生產環境、重要資料伺服器上使用。  

---

## 🚀 使用方法

直接執行以下命令：

```bash
bash <(curl -sL https://raw.githubusercontent.com/johnhsing918/reinstall/main/reinstall.sh)



══════════════════════════════════════════════════════════════════════
  [  W A R N I N G  ] :: High-risk operation.
══════════════════════════════════════════════════════════════════════
  Hostname :: example-host
══════════════════════════════════════════════════════════════════════

>> Please type 'YES' to proceed:

