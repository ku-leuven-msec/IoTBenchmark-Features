SERVICE_PATH="/opt/dvd/services/http"
mkdir -p "$SERVICE_PATH"

cd $SERVICE_PATH

wget REST #TODO!

log "Installing rest service"


if [ -f "$SERVICE_PATH/requirements.txt" ]; then
      pip install -r "$SERVICE_PATH/requirements.txt"
fi
 
chmod +x "$SERVICE_PATH/check_daemon.sh"
echo "*/1 * * * * $SERVICE_PATH/check_daemon.sh" >> /etc/crontabs/root