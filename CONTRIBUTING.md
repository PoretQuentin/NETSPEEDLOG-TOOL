# Guide de contribution — NETSPEEDLOG-TOOL

Merci de l'intérêt que tu portes à ce projet ! 🎉  
Voici comment contribuer efficacement.

---

## 📋 Avant de commencer

- Vérifie que ta demande n'est pas déjà couverte par une [issue existante](https://github.com/PoretQuentin/NETSPEEDLOG-TOOL/issues).
- Pour les grandes modifications, ouvre d'abord une issue pour discuter de tes intentions avant de coder.

---

## 🐛 Signaler un bug

Utilise le template **Bug Report** dans les issues et fournis :

- La version de Windows utilisée
- La version de PowerShell (`$PSVersionTable`)
- Les étapes pour reproduire le problème
- Le comportement attendu vs le comportement observé
- Les logs ou captures d'écran si disponible

---

## 💡 Proposer une amélioration

Utilise le template **Feature Request** et explique :

- Le problème que tu cherches à résoudre
- Ta solution proposée
- Pourquoi cette fonctionnalité serait utile aux autres utilisateurs

---

## 🔧 Soumettre une Pull Request

1. **Fork** le dépôt et crée ta branche depuis `master` :
   ```bash
   git checkout -b feature/ma-fonctionnalite
   ```

2. **Effectue tes modifications** en respectant le style existant (PowerShell + HTML/CSS/JS).

3. **Teste** ton code sur Windows avec PowerShell avant de soumettre.

4. **Documente** tes changements dans le code si nécessaire.

5. **Ouvre une Pull Request** avec une description claire de ce qui a changé et pourquoi.

---

## 🎨 Style de code

- **PowerShell** : respecte les conventions de nommage PascalCase pour les fonctions, camelCase pour les variables locales.
- **HTML/CSS/JS** : indentation à 2 espaces, code lisible et commenté si complexe.
- Garde le code **léger et sans dépendances cloud** — c'est l'esprit du projet.

---

## 📜 Licence

En contribuant, tu acceptes que tes contributions soient distribuées sous la même licence [MIT](LICENSE) que le projet.
