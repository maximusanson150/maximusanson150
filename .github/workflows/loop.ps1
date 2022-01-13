$i = 360
do {
    tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
    Sleep 60
    $i--
} while ($i -gt 0)
