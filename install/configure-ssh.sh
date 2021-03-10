rm -rf ~/.ssh
cp -r $(pwd)/ssh ~/.ssh
chmod 600 ~/.ssh/config
#chmod 600 ~/.ssh/id_*
echo "✔ SSH files symlinked!"
