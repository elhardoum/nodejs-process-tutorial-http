while "true"; do
    # commented-out, this would result in a huge file
    #printf "Check server state\n"

    if [ $(ps aux | grep 'node server.js' | grep -v grep | wc -l) -eq 0 ]; then
        # run server
        printf "[`date`] Running server...\n"
        nohup sh -c "node server.js >> http-`date +%Y-%m-%d`.log 2>&1" &
    fi

    sleep 2
done