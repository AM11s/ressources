// Ped NUI JavaScript
(function() {
    'use strict';

    // État local
    let pedData = {
        name: 'John Doe',
        status: 'Actif',
        level: 42
    };

    // Initialisation
    function init() {
        console.log('[Ped NUI] Initialisation...');
        
        // Marquer le DUI comme prêt
        if (window.HologramReady) {
            window.HologramReady('ped_nui');
        }

        // Écouter les événements
        setupEventListeners();
        
        // Afficher les données initiales
        updateDisplay();
    }

    // Configuration des event listeners
    function setupEventListeners() {
        // Boutons
        document.getElementById('btn-interact')?.addEventListener('click', () => {
            console.log('[Ped NUI] Bouton Parler cliqué');
            sendToLua('interact', { action: 'talk' });
        });

        document.getElementById('btn-trade')?.addEventListener('click', () => {
            console.log('[Ped NUI] Bouton Échanger cliqué');
            sendToLua('interact', { action: 'trade' });
        });

        document.getElementById('btn-info')?.addEventListener('click', () => {
            console.log('[Ped NUI] Bouton Informations cliqué');
            sendToLua('interact', { action: 'info' });
        });

        // Écouter les messages du système hologramme
        if (window.HologramListen) {
            window.HologramListen('updatePedData', (data) => {
                console.log('[Ped NUI] Données reçues:', data);
                if (data.name) pedData.name = data.name;
                if (data.status) pedData.status = data.status;
                if (data.level !== undefined) pedData.level = data.level;
                updateDisplay();
            });
        }
    }

    // Mise à jour de l'affichage
    function updateDisplay() {
        const nameEl = document.getElementById('ped-name');
        const statusEl = document.getElementById('ped-status');
        const levelEl = document.getElementById('ped-level');

        if (nameEl) nameEl.textContent = pedData.name;
        if (levelEl) levelEl.textContent = pedData.level;
        
        if (statusEl) {
            statusEl.textContent = pedData.status;
            statusEl.className = 'value ' + (pedData.status === 'Actif' ? 'status-active' : 'status-inactive');
        }
    }

    // Envoyer des données au Lua
    function sendToLua(eventName, data) {
        if (window.HologramSendData) {
            window.HologramSendData(eventName, data);
        }
    }

    // Démarrer quand le DOM est prêt
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }

})();
