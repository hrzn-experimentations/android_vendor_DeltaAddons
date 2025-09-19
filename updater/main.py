import urllib.request
from os import path

import certificates
import git
from sources import ApkRelease, fdroid_recommended_release


def update_if_needed(module: str, release: ApkRelease):
    module_dir = path.abspath(path.join(path.dirname(__file__), '..', module))
    with open(path.join(module_dir, '.version_code'), 'r+') as version_code_file:
        version_code = int(version_code_file.read())
        if version_code < release.version_code:
            print('updating {} to {}'.format(module, release.version_name))
            apk_filename = path.join(module_dir, '{}.apk'.format(module))

            old_sig = certificates.get_apk_certificate(apk_filename)

            print('downloading {} ...'.format(release.download_url))
            urllib.request.urlretrieve(release.download_url, apk_filename)

            new_sig = certificates.get_apk_certificate(apk_filename)
            if old_sig != new_sig:
                raise Exception('Signature mismatch for {} old sig: {} new sig: {}'.format(module, old_sig, new_sig))

            version_code_file.seek(0)
            version_code_file.write(str(release.version_code))
            version_code_file.truncate()
            version_code_file.close()

            print('Need to update {} to {}'.format(module, release.version_name))
            return

            print('commit and push...')
            git.add_commit_push(module_dir, 'Update {} to {}'.format(module, release.version_name))

        elif version_code > release.version_code:
            print('{} ahead of suggested version ({} > {})'.format(module, version_code, release.version_code))
        elif version_code == release.version_code:
            print('{} up to date.'.format(module))

fdroid_main_repo = 'https://www.f-droid.org/repo'
fdroid_microg_repo = 'https://microg.org/fdroid/repo'
fdroid_izzy_repo = 'https://apt.izzysoft.de/fdroid/repo'

# microG module
update_if_needed('microg/FakeStore', fdroid_recommended_release(fdroid_microg_repo, 'com.android.vending'))
update_if_needed('microg/GmsCore', fdroid_recommended_release(fdroid_microg_repo, 'com.google.android.gms'))
update_if_needed('microg/GsfProxy', fdroid_recommended_release(fdroid_microg_repo, 'com.google.android.gsf'))

# F-Droid apps
update_if_needed('fdroid/AuroraStore', fdroid_recommended_release(fdroid_main_repo, 'com.aurora.store'))
update_if_needed('fdroid/NeoStore', fdroid_recommended_release(fdroid_main_repo, 'com.machiav3lli.fdroid'))
update_if_needed('fdroid/LibreTube', fdroid_recommended_release(fdroid_main_repo, 'com.github.libretube'))
update_if_needed('fdroid/MaterialFiles', fdroid_recommended_release(fdroid_main_repo, 'me.zhanghai.android.files'))
update_if_needed('fdroid/Metro', fdroid_recommended_release(fdroid_main_repo, 'io.github.muntashirakon.Music'))
update_if_needed('fdroid/Seal', fdroid_recommended_release(fdroid_main_repo, 'com.junkfood.seal'))

# IzzyOnDroid apps
update_if_needed('fdroid/Metrolist', fdroid_recommended_release(fdroid_izzy_repo, 'com.metrolist.music'))
