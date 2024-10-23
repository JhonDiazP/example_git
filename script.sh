cd /home/usuario/sync-v2/

sudo rm package-lock.json

sudo git config --global --add safe.directory /home/usuario/sync-v2/
output=$(git pull 2>&1)

if echo "$output" | grep -q 'Ya est� actualizado.' || echo "$output" | grep -q 'Already up to date.'; then

	echo "no hay cambios en la rama."

else

    echo "hay cambios en la rama."

    sh /home/usuario/sync-v2/scripts_sh/sync-dist.sh

fi
