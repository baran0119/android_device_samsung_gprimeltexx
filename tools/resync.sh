#repo forall -vc 'git reset --hard'
repo sync -f -c --no-clone-bundle --no-tags ${@}
patch -p1 < device/samsung/gprimelte-common/patch/patch.diff