# ⚡ LuaTools Installer & Uninstaller

Ferramenta em `.bat` que permite **INSTALAR e DESINSTALAR completamente o LuaTools / Steam Tools Millennium** de forma automática.

---

## 🚀 O que este projeto faz

🔽 **Instala o LuaTools automaticamente**
- Executa comandos oficiais via PowerShell
- Instala plugins necessários
- Tudo como administrador

🧹 **Desinstala completamente**
- Remove modificações da Steam:
  - `appcache`
  - `config`
  - `userdata`
- Remove arquivos do LuaTools:
  - `%USERPROFILE%\LuaTools`
  - `%APPDATA%\LuaTools`
  - `%LOCALAPPDATA%\LuaTools`

🔄 **Restaura a Steam**
- Baixa arquivos limpos automaticamente
- Corrige alterações feitas por ferramentas externas

---

## 📂 Arquivos do projeto

- `LuaTools Installer.bat` → Instala o LuaTools + plugins  
- `LuaTools Uninstaller.bat` → Remove tudo + limpa a Steam  

---

## ⚙️ Como usar

### 🔽 Para instalar:
1. Execute `LuaTools Installer.bat`
2. Aceite o modo administrador
3. Aguarde a instalação automática

---

### 🧹 Para desinstalar:
1. Execute `LuaTools Uninstaller.bat`
2. Escolha uma opção:

- ❌ Excluir Steam
- 🔄 Reinstalar Steam
- ✅ Manter Steam (apenas limpar)

---

## ⚠️ Aviso MUITO importante (Backup)

Antes de desinstalar, é **FORTEMENTE recomendado fazer backup** dos seus dados.

A remoção pode apagar:
- Saves locais (`userdata`)
- Configurações da Steam
- Dados modificados pelo LuaTools

👉 Use meu outro projeto para backup automático:
🔗 https://github.com/BRUNAO916/Steam-Tools_Backup

---

## ⚠️ Outros avisos

- ❗ Sempre execute como **Administrador**
- ❗ Seus jogos NÃO são apagados (a menos que exclua a Steam)
- ❗ Saves na nuvem (Steam Cloud) permanecem seguros

---

## 🧠 Como funciona

### Instalação:
- Executa:
```
irm steam.run | iex
```
- Depois instala plugins via:
```
iwr -useb https://luatools.vercel.app/install-plugin.ps1| iex
```

---

### Desinstalação:
- Fecha Steam
- Remove arquivos modificados
- Limpa LuaTools
- Permite restaurar ou reinstalar Steam

---

## 📍 Caminho padrão da Steam
```
C:\Program Files (x86)\Steam
```

---

## 🚀 Melhorias futuras

- Detectar Steam automaticamente  
- Interface gráfica  
- Logs detalhados  

---

## 📜 Licença

Uso livre para fins educacionais.

---

## 👨‍💻 Autor

## Brunao916
