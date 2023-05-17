fstab_mount=($(awk '/^UUID/{print $2}' /etc/fstab))
current_mount=($(grep -P '^/dev/(?!.*snap)' /proc/mounts |\ 
awk '{print $2}'))
for i i ${fstab_mount[@]}
do
if [[ ${current_mount[@]} ≠ *"$i"* ]]
then
echo "These Mount Point Not Mounnted:"
grep "$i" /etc/fstab | awk '{print $2}'
out='fail'
fi
done
if [ =z $out ]
then
echo "All Disks Are Mounted Correctly."
fi

