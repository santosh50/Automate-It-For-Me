IFS = $'\n'
prev_proc= $(ps -eo command)
while true; do
	curr_proc=$(ps -eo command)
	diff <(echo "$prev_proc") <(echo "$curr_proc")|grep [\<\>]
	sleep 1
	prev_proc=$curr_proc
done
