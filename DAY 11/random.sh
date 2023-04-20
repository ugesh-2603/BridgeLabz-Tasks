numbers=()

for i in {1..20};
do
	number+=($((RANDOM % 900 +100)))
done
echo "Random Number: ${number[@]}"

largestnumber=${number[0]}
second_largestnumber=${number[0]}
smallest=${number[0]}
second_smallest=${number[0]}

for number in "${number[@]}";
do
	if [[ "$number" -gt "$largestnumber" ]]; then
	second_largestnumber="$largestnumber"
	largestnumber="$number"
	elif [[ "$number" -gt "$second_largestnumber" ]] && [[ "$number" -ne "$largestnumber" ]]; then
	second_largestnumber="$number"
fi

	if [[ "$number" -lt "$smallest" ]]; then
        second_smallest="$smallest"
        smallest="$number"
        elif [[ "$number" -lt "$second_smallest" ]] && [[ "$number" -ne "$smallest" ]]; then
        second_smallest="$number"
fi

done
echo "Second largest number: $second_largestnumber"
echo "Second Smallest number: $second_smallest"
