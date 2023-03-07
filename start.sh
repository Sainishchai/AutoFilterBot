if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sainishchai/AutoFilterBot /AutoFilterBot-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterBot-1
fi
cd /AutoFilterBot-1
pip3 install -U -r requirements.txt
echo "Starting AutoFILTERBOT...."
python3 bot.py
