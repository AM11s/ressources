/**
 * Voltre Hologram - Interaction 3D Logic (JS-Centric)
 * Gère la distance, les inputs et l'affichage côté JS
 */

// Initialiser l'API
HologramAPI.init("interaction");

// ========================================
// CONFIGURATION
// ========================================
let CONFIG = {
    CAN_SEE_TTL: 4000,      // Cache canSee pendant 4 secondes
    UPDATE_INTERVAL: 16,     // ~60fps pour le calcul de distance
    SERVER_NAME: "NOT LOADED",
    SERVER_CHAR: "NOT LOADED",
};

// ========================================
// ÉTAT GLOBAL
// ========================================
const interactions = new Map();  // Stockage des interactions
let currentInteraction = null;   // Interaction actuellement affichée (celle du DUI actuel)
let currentStyle = "holographic";
let lastLinesHash = null;

// ========================================
// ÉLÉMENTS DOM
// ========================================
const panel = document.getElementById("interaction-panel");
const basicView = document.getElementById("basic-view");
const multiView = document.getElementById("multi-view");
const basicKey = document.getElementById("basic-key");
const basicText = document.getElementById("basic-text");
const multiTitle = document.getElementById("multi-title");
const multiLines = document.getElementById("multi-lines");

// ========================================
// GESTION DES INTERACTIONS
// ========================================

/**
 * Enregistre une nouvelle interaction
 */
function registerInteraction(data) {
    const interaction = {
        id: data.id,
        coords: data.coords,
        type: data.type || "basic",
        text: data.text,
        key: data.key || "E",
        style: data.style || "holographic",
        maxDistance: data.maxDistance || 10.0,
        maxDistanceInteract: data.maxDistanceInteract || 2.0,
        hasCanSee: data.hasCanSee || false,
        lines: data.lines || [],
        
        // État
        visible: false,
        canInteract: false,
        canSeeCache: null,
        canSeeCacheTime: 0,
    };
    
    interactions.set(data.id, interaction);
    currentInteraction = interaction;
    
    // Appliquer le style initial
    if (interaction.style !== currentStyle) {
        currentStyle = interaction.style;
        applyStyle(interaction.style);
    }
    
    // Afficher immédiatement
    updateDisplay(interaction);
}

/**
 * Met à jour une interaction existante
 */
function updateInteraction(id, changes) {
    const interaction = interactions.get(id) || currentInteraction;
    if (!interaction) return;
    
    Object.assign(interaction, changes);
    
    // Si c'est l'interaction courante, mettre à jour l'affichage
    if (currentInteraction && currentInteraction.id === id) {
        updateDisplay(interaction);
    }
}

/**
 * Supprime une interaction
 */
function removeInteraction(id) {
    interactions.delete(id);
    if (currentInteraction && currentInteraction.id === id) {
        currentInteraction = null;
    }
}

/**
 * Rafraîchit le cache canSee
 */
function refreshCanSee(id) {
    const interaction = interactions.get(id) || currentInteraction;
    if (interaction) {
        interaction.canSeeCache = null;
        interaction.canSeeCacheTime = 0;
    }
}

// ========================================
// COORDONNÉES JOUEUR (reçues du Lua via HologramAPI)
// ========================================

let playerCoords = { x: 0, y: 0, z: 0 };
let coordsReceived = 0;

// Debug: vérifier si on reçoit des messages
console.log("[Hologram] interaction.js loaded, waiting for coords...");

/**
 * Met à jour l'état basé sur la distance (appelé quand les coords changent)
 */
let distanceUpdateCount = 0;
function updateDistanceState() {
    if (!currentInteraction) {
        return;
    }
    
    const interaction = currentInteraction;
    
    // Calculer la distance
    const dx = playerCoords.x - interaction.coords.x;
    const dy = playerCoords.y - interaction.coords.y;
    const dz = playerCoords.z - interaction.coords.z;
    const distance = Math.sqrt(dx * dx + dy * dy + dz * dz);
    
    distanceUpdateCount++;
    if (distanceUpdateCount <= 5 || distanceUpdateCount % 50 === 0) {
        console.log("[Hologram] Distance update #" + distanceUpdateCount + 
            " | distance: " + distance.toFixed(2) + 
            " | maxDistanceInteract: " + interaction.maxDistanceInteract +
            " | canInteract: " + (distance <= interaction.maxDistanceInteract));
    }
    
    // Vérifier si dans la zone d'interaction
    const wasCanInteract = interaction.canInteract;
    interaction.canInteract = distance <= interaction.maxDistanceInteract;
    
    // Mettre à jour l'état disabled si changé
    if (wasCanInteract !== interaction.canInteract) {
        console.log("[Hologram] canInteract changed: " + wasCanInteract + " -> " + interaction.canInteract);
        if (interaction.canInteract) {
            panel.classList.remove("disabled");
        } else {
            panel.classList.add("disabled");
        }
    }
    
    // Vérifier canSee si nécessaire (avec cache TTL)
    if (interaction.hasCanSee && interaction.canInteract) {
        const now = Date.now();
        if (interaction.canSeeCache === null || (now - interaction.canSeeCacheTime) > CONFIG.CAN_SEE_TTL) {
            // Demander au Lua
            HologramAPI.send("checkCanSee", { id: interaction.id });
        }
    }
}

// ========================================
// GESTION DES INPUTS CLAVIER
// ========================================
// Note: Les inputs sont gérés côté Lua car les DUI isolés
// ne reçoivent pas les événements clavier du jeu

// ========================================
// AFFICHAGE
// ========================================

function updateDisplay(interaction) {
    if (!interaction) return;

    if (interaction.type === "basic") {
        showBasicView(interaction);
    } else if (interaction.type === "multi") {
        showMultiView(interaction);
    }
}

/**
 * Applique un style (holographic ou default)
 */
function applyStyle(style) {
    const root = document.documentElement;
    
    if (style === "default") {
        panel.classList.remove("style-holographic");
        panel.classList.add("style-default");
    } else {
        // Style holographique (par défaut)
        panel.classList.remove("style-default");
        panel.classList.add("style-holographic");
    }
}

function applyColorRoot(color) {
    let r, g, b;
        
    if (typeof color === "string") {
        if (color.startsWith('#')) {
            const hex = color.replace('#', '');
            r = parseInt(hex.substring(0, 2), 16);
            g = parseInt(hex.substring(2, 4), 16);
            b = parseInt(hex.substring(4, 6), 16);
        } else {
            const match = color.match(/\d+/g);
            if (match) [r, g, b] = match.map(Number);
        }
    }
        
    if (r !== undefined) {
        root.style.setProperty('--holo-main-color', `rgb(${r}, ${g}, ${b})`);
        root.style.setProperty('--holo-main-color-10', `rgba(${r}, ${g}, ${b}, 0.1)`);
        root.style.setProperty('--holo-main-color-20', `rgba(${r}, ${g}, ${b}, 0.2)`);
        root.style.setProperty('--holo-main-color-30', `rgba(${r}, ${g}, ${b}, 0.3)`);
        root.style.setProperty('--holo-main-color-50', `rgba(${r}, ${g}, ${b}, 0.5)`);
        root.style.setProperty('--holo-main-color-80', `rgba(${r}, ${g}, ${b}, 0.8)`);
    }
}

/**
 * Affiche la vue basic
 */
function showBasicView(data) {
    basicView.style.display = "block";
    multiView.style.display = "none";

    basicKey.textContent = data.key || "E";
    basicText.textContent = data.text || "Interagir";
}

/**
 * Génère un hash simple pour détecter les changements
 */
function hashLines(lines) {
    if (!lines) return "";
    return JSON.stringify(lines.map(l => ({
        id: l.id,
        left: l.left,
        right: l.right,
        key: l.key,
        hidden: l.hidden
    })));
}

/**
 * Affiche la vue multi
 */
function showMultiView(data) {
    basicView.style.display = "none";
    multiView.style.display = "block";

    // Parser text si c'est une string, sinon utiliser directement
    let textData = data.text;
    if (typeof textData === "string") {
        try {
            textData = JSON.parse(textData);
        } catch (e) {
            textData = { title: "Menu", lines: [] };
        }
    }
    
    // S'assurer que textData est un objet valide
    if (!textData || typeof textData !== "object") {
        textData = { title: "Menu", lines: [] };
    }

    // Titre
    multiTitle.textContent = textData.title || "Menu";

    // Vérifier si les lignes ont changé
    const newHash = hashLines(textData.lines);
    if (newHash === lastLinesHash) {
        // Pas de changement, ne pas recréer les lignes
        return;
    }
    lastLinesHash = newHash;

    // Générer les lignes (seulement si changées)
    multiLines.innerHTML = "";

    if (textData.lines && Array.isArray(textData.lines)) {
        
        textData.lines.forEach((line, index) => {
            if (line.hidden) return;

            const lineEl = document.createElement("div");
            lineEl.className = "multi-line";
            lineEl.dataset.id = line.id || index;

            if (line.hidden) {
                lineEl.classList.add("hidden");
            }

            if (line.key) {
                lineEl.classList.add("has-action");
            }

            // Partie gauche
            const leftEl = document.createElement("div");
            leftEl.className = "line-left";

            if (line.key) {
                const keyEl = document.createElement("span");
                keyEl.className = "holo-key line-key";
                keyEl.textContent = line.key;
                leftEl.appendChild(keyEl);
            }

            const textEl = document.createElement("span");
            textEl.className = "line-text";
            textEl.textContent = line.left || line.text || "";
            leftEl.appendChild(textEl);

            lineEl.appendChild(leftEl);

            // Partie droite
            if (line.right !== undefined) {
                const rightEl = document.createElement("div");
                rightEl.className = "line-right";

                if (typeof line.right === "boolean") {
                    const icon = document.createElement("span");
                    icon.className = line.right ? "check-icon" : "cross-icon";
                    icon.textContent = line.right ? "✓" : "✗";
                    rightEl.appendChild(icon);
                } else {
                    rightEl.textContent = line.right;
                }

                lineEl.appendChild(rightEl);
            }

            multiLines.appendChild(lineEl);
        });
    }
}

// ========================================
// ÉVÉNEMENTS NUI
// ========================================

// Enregistrement d'une interaction (appelé une seule fois à la création)
HologramAPI.on("register", (id, data) => {
    registerInteraction(data);
});

// Mise à jour partielle (ex: changer une ligne, le texte, etc.)
HologramAPI.on("update", (id, data) => {
    updateInteraction(id, data);
    // Aussi mettre à jour l'affichage si les données visuelles changent
    if (data.text || data.lines) {
        lastLinesHash = null; // Forcer le re-render
        updateDisplay(currentInteraction);
    }
});

// Suppression
HologramAPI.on("remove", (id, data) => {
    removeInteraction(id);
});

// Réponse canSee du Lua
HologramAPI.on("canSeeResult", (id, data) => {
    const interaction = interactions.get(data.id) || currentInteraction;
    if (interaction) {
        interaction.canSeeCache = data.result;
        interaction.canSeeCacheTime = Date.now();
        
        // Si canSee = false, cacher l'interaction
        if (!data.result) {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    }
});

// Refresh canSee forcé depuis Lua
HologramAPI.on("refreshCanSee", (id, data) => {
    refreshCanSee(data.id);
});

// Coordonnées du joueur (envoyées par Lua toutes les 100ms)
HologramAPI.on("playerCoords", (id, data) => {
    playerCoords = data;
    coordsReceived++;
    if (coordsReceived <= 3 || coordsReceived % 50 === 0) {
        console.log("[Hologram] Coords received #" + coordsReceived + ":", playerCoords);
    }
    updateDistanceState();
});

HologramAPI.on("initConfig", (id, data) => {
    applyColorRoot(data.color);
    CONFIG.SERVER_NAME = data.name;
    CONFIG.SERVER_CHAR = data.logo;
});

// Animation de clic (envoyée par Lua quand une action est déclenchée)
HologramAPI.on("actionPressed", (id, data) => {
    if (data.type === "basic") {
        // Animer la touche
        const keyEl = basicKey;
        if (keyEl) {
            keyEl.classList.remove("pressed");
            void keyEl.offsetWidth; // Force reflow
            keyEl.classList.add("pressed");
            setTimeout(() => keyEl.classList.remove("pressed"), 200);
        }
    } else if (data.type === "multi" && data.lineId) {
        // Animer la ligne
        const lineEl = document.querySelector(`.multi-line[data-id="${data.lineId}"]`);
        if (lineEl) {
            lineEl.classList.remove("pressed");
            void lineEl.offsetWidth; // Force reflow
            lineEl.classList.add("pressed");
            setTimeout(() => lineEl.classList.remove("pressed"), 250);
        }
    }
});

// Marquer comme prêt
HologramAPI.ready();
