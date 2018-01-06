vagrant up
# make final manual adjustments to get things "just so"
# shut the machine down with vagrant halt machineName
vagrant snapshot save machineName snapshotName
vagrant snapshot restore machineName snapshotName 
