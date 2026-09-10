(function () {
    const root = document.getElementById('displayRoot');
    const gearEl = document.getElementById('gearDisplay');
    const gearNumEl = document.getElementById('gearNum');
    const digits = [
        document.getElementById('speedDisplayDigit_0'),
        document.getElementById('speedDisplayDigit_1'),
        document.getElementById('speedDisplayDigit_2'),
    ];
    const unitEl = document.getElementById('unitDisplay');
    const absEl  = document.getElementById('absIndicator');
    const hbEl   = document.getElementById('hBrakeIndicator');
    const beltEl = document.getElementById('seatbeltIndicator');
    const rpmEl  = document.getElementById('rpmBar');
    const fuelBar = document.getElementById('fuelBar');

    function setVisible(v) {
        if (v) root.classList.remove('hidden');
        else root.classList.add('hidden');
    }

    function setPackMode(mode) {
        root.classList.remove('mode-basic', 'mode-realistic');
        root.classList.add('mode-' + (mode === 'realistic' ? 'realistic' : 'basic'));
    }

    function setSpeedDigits(n) {
        const rounded = Math.max(0, Math.min(999, Math.round(n)));
        const s = String(rounded);
        // Right-align: last digit always in slot 2, fill leftward
        digits[0].textContent = s.length >= 3 ? s[s.length - 3] : '';
        digits[1].textContent = s.length >= 2 ? s[s.length - 2] : '';
        digits[2].textContent = s[s.length - 1];
    }

    function setGear(g, rpmOverload, reverse) {
        gearEl.classList.remove('rpmOverload', 'reverseGear', 'normalRpm');
        if (reverse || g === 0 || g === 'R') {
            gearNumEl.textContent = 'R';
            gearEl.classList.add('reverseGear');
        } else if (rpmOverload) {
            gearNumEl.textContent = String(g);
            gearEl.classList.add('rpmOverload');
        } else {
            gearNumEl.textContent = String(g);
            gearEl.classList.add('normalRpm');
        }
    }

    function setIndicator(el, on) {
        if (on) {
            el.classList.add('active');
            el.classList.remove('inactive');
        } else {
            el.classList.remove('active');
            el.classList.add('inactive');
        }
    }

    function setSeatbelt(on) {
        // Seatbelt has 3 states in the visual: on (green), off (red), inactive (grey)
        beltEl.classList.remove('inactive', 'active', 'off');
        if (on === true) {
            beltEl.classList.add('active');
        } else {
            beltEl.classList.add('off');
        }
    }

    function setFuel(pct) {
        const clamped = Math.max(0, Math.min(100, pct));
        fuelBar.style.width = clamped + '%';
        fuelBar.classList.toggle('low', clamped <= 15);
    }

    function setState(data) {
        if (typeof data.speed === 'number') setSpeedDigits(data.speed);
        if (typeof data.unit === 'string') unitEl.textContent = data.unit;
        if (typeof data.gear !== 'undefined') {
            setGear(data.gear, !!data.rpmOverload, !!data.reverse);
        }
        if (typeof data.rpm === 'number') {
            const pct = Math.max(0, Math.min(100, data.rpm * 100));
            rpmEl.style.width = pct + '%';
        }
        if (typeof data.abs === 'boolean') setIndicator(absEl, data.abs);
        if (typeof data.handbrake === 'boolean') setIndicator(hbEl, data.handbrake);
        if (typeof data.seatbelt === 'boolean') setSeatbelt(data.seatbelt);
        if (typeof data.fuel === 'number') setFuel(data.fuel);
    }

    window.addEventListener('message', function (ev) {
        const data = ev.data || {};
        if (typeof data.display === 'boolean') setVisible(data.display);
        if (typeof data.packMode === 'string') setPackMode(data.packMode);
        setState(data);
    });

    // Listen for server config changes to update accent color dynamically
    if (window.VoltreState && window.VoltreState.observe) {
        window.VoltreState.observe('serverConfig.color', function (newColor) {
            if (newColor) {
                root.style.setProperty('--accent-color', newColor);
            }
        });
        // Initialize with current value if available
        const initialColor = window.VoltreState.get('serverConfig.color');
        if (initialColor) {
            root.style.setProperty('--accent-color', initialColor);
        }
    }

    fetch('https://voltre-core/speedHologramReady', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
    }).catch(function () {});
})();
