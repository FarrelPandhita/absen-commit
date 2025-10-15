#!/bin/bash

start_date="2023-01-01"
end_date="2024-12-31"

current_date=$(date -d "$start_date" +%Y-%m-%d)
final_date=$(date -d "$end_date" +%Y-%m-%d)

# Array pesan dan emoji untuk variasi cepat
messages=("absen" "hadir" "present" "disini" "출석" "在席")
emojis=("🎉" "📅" "✅" "🚀" "📝")

while [[ "$current_date" < "$final_date" || "$current_date" == "$final_date" ]]; do
    echo "📅  $current_date"

    # Random jumlah commit 4–7
    num_commits=$((RANDOM % 3 + 7))  # 4–7

    for ((i = 1; i <= num_commits; i++)); do
        # Generate random time langsung (jam 8–23)
        hour=$((RANDOM % 16 + 8))
        minute=$((RANDOM % 60))
        second=$((RANDOM % 60))

        commit_time=$(printf "%02d:%02d:%02d" "$hour" "$minute" "$second")
        commit_datetime="${current_date}T${commit_time}"

        # Buat isi file unik
        echo "[$current_date][$commit_time] Commit ke-$i" > absen.txt

        # Random pesan + emoji
        msg=${messages[$RANDOM % ${#messages[@]}]}
        emoji=${emojis[$RANDOM % ${#emojis[@]}]}
        full_msg="$msg $emoji"

        # Commit dengan waktu custom
        git add absen.txt
        GIT_COMMITTER_DATE="$commit_datetime" git commit --date="$commit_datetime" -m "$full_msg"

        echo "  ✅ Commit $i at $commit_datetime - $full_msg"
    done

    # Lanjut ke hari berikutnya
    current_date=$(date -I -d "$current_date + 1 day")
done

# Push semua commit
git push
