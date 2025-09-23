#!/bin/bash

# --- Configurazione ---
DISCO="/dev/sda1"            # Modifica se il tuo disco ha un altro nome
MOUNT_POINT="/mnt/plexdrive"
PLEX_USER="plex"

# --- Creazione punto di montaggio ---
echo "[*] Creazione punto di montaggio..."
sudo mkdir -p "$MOUNT_POINT"

# --- Montaggio disco ---
echo "[*] Montaggio disco..."
sudo mount "$DISCO" "$MOUNT_POINT"

# --- Controllo montaggio riuscito ---
if mountpoint -q "$MOUNT_POINT"; then
    echo "[✓] Disco montato su $MOUNT_POINT"
else
    echo "[✗] Errore nel montaggio. Controlla il disco."
    exit 1
fi

# --- Impostazione permessi ---
echo "[*] Impostazione permessi per Plex..."
sudo chown -R $PLEX_USER:$PLEX_USER "$MOUNT_POINT"
sudo chmod -R 755 "$MOUNT_POINT"

# --- Aggiornamento fstab per montaggio automatico ---
echo "[*] Aggiunta a fstab per montaggio automatico..."
grep -qxF "$DISCO $MOUNT_POINT auto defaults,nofail 0 0" /etc/fstab || \
    echo "$DISCO $MOUNT_POINT auto defaults,nofail 0 0" | sudo tee -a /etc/fstab

echo "[✓] Tutto pronto! Puoi ora aggiungere la libreria Plex su $MOUNT_POINT"
