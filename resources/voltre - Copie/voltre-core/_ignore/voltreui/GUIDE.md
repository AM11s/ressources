# VoltreUI - Guide de Refactorisation Complet

> Documentation technique pour la refactorisation du système de menus RageUI en VoltreUI unifié.

---

## Table des matières

1. [Objectif](#objectif)
2. [Analyse des 3 Styles Existants](#analyse-des-3-styles-existants)
3. [Différences Détaillées](#différences-détaillées)
4. [Nouvelle Architecture](#nouvelle-architecture)
5. [API à Conserver](#api-à-conserver)
6. [Plan d'Implémentation](#plan-dimplémentation)
7. [Checklist de Migration](#checklist-de-migration)

---

## Objectif

Transformer les 3 implémentations de RageUI (`RageUI1`, `RageUI2`, `RageUI3`) en une **librairie unique** avec un système de **thèmes configurables**, tout en conservant **100% de compatibilité** avec l'API existante.

### Problèmes actuels

| Fichier | Lignes | Taille |
|---------|--------|--------|
| `VoltreUIMain.lua` | ~1,200 | 34 KB |
| `VoltreUI.lua` (RageUI1) | ~4,400 | 208 KB |
| `VoltreUI2.lua` (RageUI2) | ~5,150 | 226 KB |
| `VoltreUI3.lua` (RageUI3) | ~4,250 | 198 KB |
| **Total** | **~15,000** | **~666 KB** |

### Objectif cible

| Composant | Lignes estimées |
|-----------|-----------------|
| Core (init, render, controls) | ~800 |
| Items (button, checkbox, list, slider) | ~600 |
| Panels (grid, colour, percentage) | ~400 |
| Themes (3 fichiers de config) | ~300 |
| Main (API publique) | ~200 |
| **Total** | **~2,300** |

**Réduction : ~85% du code**

---

## Analyse des 3 Styles Existants

### Vue d'ensemble

| Aspect | RageUI1 (Style 3) | RageUI2 (Style 2) | RageUI3 (Style 1) |
|--------|-------------------|-------------------|-------------------|
| **Apparence** | Classique GTA | Moderne avec animations | Sombre minimaliste |
| **Couleur sélection** | Couleur serveur (convar) | Barre latérale colorée | Couleur serveur (convar) |
| **Animation** | Aucune | Effet de balayage | Aucune |
| **Font titre** | Font 6, Scale 1.2 | Font 6, Scale 1.2 | Font 11, Scale 0.8 |
| **Pagination** | 10 items | 10 items | 14 items |

### Mapping des styles

```lua
-- Dans VoltreUIMain.lua, le mapping est inversé !
function getRageUICb()
    if StyleIndex == 1 then return RageUI3  -- Style 1 = RageUI3 (Dark)
    elseif StyleIndex == 2 then return RageUI2  -- Style 2 = RageUI2 (Modern)
    elseif StyleIndex == 3 then return RageUI1  -- Style 3 = RageUI1 (Classic)
    end
end
```

---

## Différences Détaillées

### 1. Settings.Items (Dimensions globales)

#### Title (Banner)

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `Background.Width` | 431 | 431 | 415 |
| `Background.Height` | 107 | 107 | 105 |
| `Text.X` | 215 | 215 | 215 |
| `Text.Y` | 20 | 20 | 20 |
| `Text.Scale` | 1.15 | 1.15 | 1.15 |

#### Subtitle

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `Background.Width` | 431 | 431 | 415 |
| `Background.Height` | 37 | 40 | 40 |
| `Text.X` | 8 | 14 | 14 |
| `Text.Y` | 3 | 10 | 7 |
| `Text.Scale` | 0.35 | 0.27 | 0.25 |
| `PreText.X` | 425 | 420 | 395 |
| `PreText.Y` | 3 | 10 | 9 |
| `PreText.Scale` | 0.35 | 0.30 | 0.27 |

#### Navigation

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `Rectangle.Width` | 431 | 0 | 0 |
| `Rectangle.Height` | 18 | 0 | 0 |
| `Arrows.Width` | 50 | 0 | 0 |
| `Arrows.Height` | 50 | 0 | 0 |

> **Note**: RageUI2 et RageUI3 n'affichent pas les flèches de navigation.

#### Description

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `Bar.Width` | 431 | 431 | 415 |
| `Bar.Height` | 4 | 4 | 4 |
| `Background.Width` | 431 | 431 | 415 |
| `Background.Height` | 30 | 30 | 30 |
| `Text.X` | 8 | 8 | 8 |
| `Text.Y` | 10 | 10 | 10 |
| `Text.Scale` | 0.35 | 0.30 | 0.25 |

---

### 2. SettingsButton (Items)

#### Button principal

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `Rectangle.Width` | 431 | 500 | 500 |
| `Rectangle.Height` | 38 | 43 | 43 |
| `Text.X` | 8 | 25 | 13 |
| `Text.Y` | 3 | 7 | 7 |
| `Text.Scale` | 0.31 | 0.25 | 0.25 |
| `LeftBadge.Y` | -2 | -2 | -2 |
| `LeftBadge.Width` | 40 | 40 | 40 |
| `LeftBadge.Height` | 40 | 40 | 40 |
| `RightBadge.X` | 385 | 385 | 385 |
| `RightBadge.Y` | -2 | -2 | -2 |
| `RightText.X` | 420 | 420 | 420 |
| `RightText.Y` | 3 | 7 | 7 |
| `RightText.Scale` | 0.31 | 0.25 | 0.25 |
| `SelectedSprite.Width` | 431 | 440 | 440 |
| `SelectedSprite.Height` | 38 | 38 | 38 |

---

### 3. CreateMenu (Valeurs par défaut)

| Propriété | RageUI1 | RageUI2 | RageUI3 |
|-----------|---------|---------|---------|
| `TitleFont` | 6 | 6 | 11 |
| `TitleScale` | 1.2 | 1.2 | 0.8 |
| `Subtitle` | "Actions(s) Disponible" | "Actions(s) Disponible" | "Action(s) Disponibles" |
| `SubtitleHeight` | -37 | -37 | -100 |
| `Y` | 30 | 30 | 30 |
| `Pagination.Maximum` | 10 | 10 | 13 |
| `Pagination.Total` | 10 | 10 | 14 |
| `Sprite.Texture` | "interaction_bgd" | "interaction_bgd" | "interaction_bgd" |

---

### 4. Couleurs

#### RageUI1 (Classic)

```lua
-- Sélection active
RenderRectangle(..., voltre.getConvarKey("r"), voltre.getConvarKey("g"), voltre.getConvarKey("b"), 255)

-- Texte actif
Active and 0 or 245  -- Noir si actif, gris sinon

-- Texte désactivé
163, 159, 148, 255
```

#### RageUI2 (Modern)

```lua
-- Background bouton
Config.RageUI.AdvancedStyle.ButtonBackground[1-4]

-- Animation balayage
74, 75, 77, alpha  -- Gris animé

-- Barre latérale active
voltre.getConvarKey("r"), voltre.getConvarKey("g"), voltre.getConvarKey("b"), 255

-- Texte
Active and 255 or 153  -- Blanc si actif, gris sinon
```

#### RageUI3 (Dark)

```lua
-- Config locale
UI3Config = {
    background = {
        main_255 = {13, 13, 13, 255},      -- Bouton fond
        main_125 = {13, 13, 13, 135},      -- Bouton fond transparent
        main2_255 = {16, 16, 16, 255},     -- Menu fond
        main2_200 = {16, 16, 16, 200},     -- Menu fond transparent
        main2_150 = {16, 16, 16, 180},     -- Menu fond léger
    },
    Selected = {voltre.getConvarKey("r"), voltre.getConvarKey("g"), voltre.getConvarKey("b"), 215},
    FullColor = {voltre.getConvarKey("r"), voltre.getConvarKey("g"), voltre.getConvarKey("b"), 255}
}

-- Texte actif
Active and 255 or 150

-- Texte désactivé
104, 108, 114, 255
```

---

### 5. Comportements spécifiques

#### RageUI1

- **Glare effect** : Effet de brillance sur le banner (optionnel)
- **Loading animation** : Barre de progression sur bouton (Style.Voltre.LoadingOnSelect)
- **VDATA parameter** : Paramètre supplémentaire dans Button()

#### RageUI2

- **Animation de balayage** : Thread séparé pour l'effet visuel
- **isWaitingForServer** : Bloque les interactions pendant les requêtes serveur
- **Config.RageUI.AdvancedStyle** : Dépendance à la config externe

#### RageUI3

- **Font différente** : Font 8 pour les textes, Font 11 pour le titre
- **Offset Y +20** : Décalage vertical sur tous les éléments
- **Pas de Glare** : Effet de brillance désactivé par défaut

---

### 6. SafeZone

| Style | SetScriptGfxAlignParams |
|-------|-------------------------|
| RageUI1 | `(0, 0, 0, 0)` |
| RageUI2 | `(22, 25, 29, 0)` |
| RageUI3 | `(0, 0, 0, 0)` |

---

### 7. Audio

Tous les styles utilisent les mêmes sons par défaut :

```lua
Audio = {
    UpDown = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_UP_DOWN" },
    LeftRight = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_LEFT_RIGHT" },
    Select = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "SELECT" },
    Back = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "BACK" },
    Error = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "ERROR" },
    Slider = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "CONTINUOUS_SLIDER" },
}
```

---

## Nouvelle Architecture

```
lib/voltreui/
├── GUIDE.md                    # Ce fichier
├── main.lua                    # Point d'entrée, API publique
│
├── core/
│   ├── init.lua                # Namespace VoltreUI, état global
│   ├── render.lua              # RenderText, RenderSprite, RenderRectangle
│   ├── controls.lua            # Gestion des inputs (Up, Down, Select, Back)
│   ├── navigation.lua          # GoUp, GoDown, GoBack, pagination
│   └── audio.lua               # PlaySound
│
├── menu/
│   ├── pool.lua                # CreateMenu, CreateSubMenu, Visible, CloseAll
│   └── methods.lua             # Méthodes :SetTitle(), :Closable(), etc.
│
├── items/
│   ├── button.lua              # RageUI.Button
│   ├── checkbox.lua            # RageUI.Checkbox
│   ├── list.lua                # RageUI.List
│   ├── slider.lua              # RageUI.Slider, SliderProgress
│   ├── separator.lua           # RageUI.Separator
│   ├── line.lua                # RageUI.Line
│   └── info.lua                # RageUI.Info
│
├── panels/
│   ├── colour.lua              # RageUI.ColourPanel
│   ├── grid.lua                # RageUI.Grid, GridHorizontal, GridVertical
│   ├── percentage.lua          # RageUI.PercentagePanel
│   ├── statistic.lua           # RageUI.StatisticPanel
│   └── button.lua              # RageUI.BoutonPanel
│
├── windows/
│   └── heritage.lua            # RageUI.Window.Heritage
│
├── themes/
│   ├── base.lua                # Structure de base d'un thème
│   ├── classic.lua             # Thème RageUI1 (Style 3)
│   ├── modern.lua              # Thème RageUI2 (Style 2)
│   └── dark.lua                # Thème RageUI3 (Style 1)
│
└── data/
    ├── badges.lua              # RageUI.BadgeStyle.*
    └── colours.lua             # RageUI.PanelColour.*
```

---

## API à Conserver

### Fonctions principales (100% compatibilité requise)

```lua
-- Création
RageUI.CreateMenu(Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)
RageUI.CreateSubMenu(ParentMenu, Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)

-- Visibilité
RageUI.Visible(Menu, Value)
RageUI.CloseAll()
RageUI.IsVisible(Menu, Items, Panels)

-- Items
RageUI.Button(Label, Description, Style, Enabled, Action, Submenu)
RageUI.Checkbox(Label, Description, Checked, Style, Actions)
RageUI.List(Label, Items, Index, Description, Style, Enabled, Actions, Submenu)
RageUI.Slider(Label, ProgressStart, ProgressMax, Description, Divider, Style, Enabled, Actions)
RageUI.SliderProgress(Label, ProgressStart, ProgressMax, Description, Style, Enabled, Actions)
RageUI.Separator(Label)
RageUI.Line(R, G, B, O)
RageUI.Info(Title, RightText, LeftText)

-- Panels
RageUI.ColourPanel(Title, Colours, MinimumIndex, CurrentIndex, Action, Index, Style)
RageUI.Grid(StartedX, StartedY, TopText, BottomText, LeftText, RightText, Action, Index)
RageUI.GridHorizontal(StartedX, LeftText, RightText, Action, Index)
RageUI.GridVertical(StartedY, TopText, BottomText, Action, Index)
RageUI.PercentagePanel(Percent, HeaderText, MinText, MaxText, Action, Index)
RageUI.StatisticPanel(Percent, Text, Index)
RageUI.BoutonPanel(LeftText, RightText, Index)

-- Windows
RageUI.Window.Heritage(Mum, Dad)

-- Navigation
RageUI.GoUp(Options)
RageUI.GoDown(Options)
RageUI.GoBack()
RageUI.Controls()
RageUI.Navigation()
RageUI.Render()

-- Utilitaires
RageUI.PlaySound(Library, Sound, IsLooped)
RageUI.Banner()
RageUI.Subtitle()
RageUI.Background()
RageUI.Description()

-- Style
ChangeRageUIStyle(value)
getRageUIStyleIndex()
```

### Méthodes de menu

```lua
menu:DisplayHeader(boolean)
menu:DisplayGlare(boolean)
menu:DisplaySubtitle(boolean)
menu:DisplayNavigation(boolean)
menu:DisplayInstructionalButton(boolean)
menu:DisplayPageCounter(boolean)
menu:SetTitle(Title)
menu:SetStyleSize(Value)
menu:GetStyleSize()
menu:SetCursorStyle(Int)
menu:ResetCursorStyle()
menu:UpdateCursorStyle()
menu:RefreshIndex()
menu:EditSpriteColor(R, G, B, A)
menu:SetPosition(X, Y)
menu:SetTotalItemsPerPage(Value)
menu:SetRectangleBanner(R, G, B, A)
menu:SetSpriteBanner(TextureDictionary, Texture)
menu:Closable(boolean)
menu:AddInstructionButton(button)
menu:RemoveInstructionButton(button)
menu:UpdateInstructionalButtons(Visible)
menu:SetSizeWidth(Value)
```

### Constantes

```lua
RageUI.CheckboxStyle.Tick
RageUI.CheckboxStyle.Cross
RageUI.BadgeStyle.*
RageUI.PanelColour.HairCut
RageUI.PanelColour.MakeUp
```

### Compatibilité legacy

```lua
-- Ces variables globales doivent exister pour la compatibilité
RageUI1 = RageUI
RageUI2 = RageUI
RageUI3 = RageUI

-- RMenu doit aussi être disponible
RMenu.Add(Type, Name, Menu)
RMenu:Get(Type, Name)
RMenu:GetType(Type)
RMenu:Settings(Type, Name, Settings, Value)
RMenu:Delete(Type, Name)
RMenu:DeleteType(Type)
```

---

## Plan d'Implémentation

### Phase 1 : Core (Priorité haute)

1. **`core/init.lua`** - Namespace, état global, thème actif
2. **`core/render.lua`** - Fonctions de rendu (RenderText, RenderSprite, RenderRectangle)
3. **`data/badges.lua`** - Copie directe des BadgeStyle
4. **`data/colours.lua`** - Copie directe des PanelColour

### Phase 2 : Thèmes

1. **`themes/base.lua`** - Structure de base
2. **`themes/classic.lua`** - Extraction des valeurs RageUI1
3. **`themes/modern.lua`** - Extraction des valeurs RageUI2
4. **`themes/dark.lua`** - Extraction des valeurs RageUI3

### Phase 3 : Menu

1. **`menu/pool.lua`** - CreateMenu, CreateSubMenu, Visible, CloseAll
2. **`menu/methods.lua`** - Toutes les méthodes :Method()
3. **`core/controls.lua`** - Gestion des inputs
4. **`core/navigation.lua`** - Navigation et pagination
5. **`core/audio.lua`** - Sons

### Phase 4 : Items

1. **`items/button.lua`**
2. **`items/checkbox.lua`**
3. **`items/list.lua`**
4. **`items/slider.lua`**
5. **`items/separator.lua`**
6. **`items/line.lua`**
7. **`items/info.lua`**

### Phase 5 : Panels

1. **`panels/colour.lua`**
2. **`panels/grid.lua`**
3. **`panels/percentage.lua`**
4. **`panels/statistic.lua`**
5. **`panels/button.lua`**

### Phase 6 : Finalisation

1. **`windows/heritage.lua`**
2. **`main.lua`** - Point d'entrée, exports
3. Tests de régression
4. Documentation finale

---

## Checklist de Migration

### Tests de régression obligatoires

- [ ] Création de menu basique
- [ ] Navigation (haut/bas/entrée/retour)
- [ ] Changement de style (1, 2, 3)
- [ ] Tous les types de boutons
- [ ] Checkbox (Tick et Cross)
- [ ] List avec navigation gauche/droite
- [ ] Slider et SliderProgress
- [ ] Separator et Line
- [ ] ColourPanel
- [ ] Grid (normal, horizontal, vertical)
- [ ] PercentagePanel
- [ ] StatisticPanel
- [ ] Heritage window
- [ ] Instructional buttons
- [ ] Sons du menu
- [ ] Sous-menus (navigation parent/enfant)
- [ ] Menu staff existant (test complet)

### Validation par style

- [ ] Style 1 (Dark) - Apparence identique
- [ ] Style 2 (Modern) - Animation de balayage fonctionnelle
- [ ] Style 3 (Classic) - Glare effect fonctionnel

---

## Notes importantes

1. **Ne jamais casser la compatibilité** - L'API doit rester 100% identique
2. **Garder l'ancien code** - Jusqu'à validation complète
3. **Tester après chaque phase** - Validation incrémentale
4. **Config.RageUI.AdvancedStyle** - Cette dépendance externe doit être gérée

---

*Document créé pour Voltre Core 4.0.0*
*Dernière mise à jour : Décembre 2024*
