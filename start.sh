if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GxNeo/GxHeisenBot.git /GxHeisenBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /GxHeisenBot
fi
cd /GxHeisenBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
