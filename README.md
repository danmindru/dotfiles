##Install notes
1. Install Sublime
    - Package Control => `import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`
    - Add `Package Control.sublime-settings` to `/Packages/User`
    - Restart Sublime (will install packages in Package Control.sublime-settings)
    - If things are fucked, `mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Theme\ -\ Default`
    - If things are still fucked, switch to Atom
    - Symlink `User` & `Danish - DK` from this repo to Sublime's Packages 
2. Symlink zsh theme to ~/.oh-my-zsh
3. Import iTerm profile in Preferences -> General
4. Install brew deps (or at least `brew install z`)
5. Install nvm (there's some default version set by zshell for each new terminal window)
6. Set key repeat rate to supersonic `defaults write NSGlobalDomain KeyRepeat -int 0`