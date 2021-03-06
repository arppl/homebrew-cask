class Alfred < Cask
  url 'http://cachefly.alfredapp.com/Alfred_2.1.1_227.zip'
  homepage 'http://www.alfredapp.com/'
  version '2.1.1_227'
  sha1 'db28d2a5c655a4611c780c3f46252530118ddd9d'
  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'
  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.runningwithcrayons.alfred-2 moveToApplicationsFolderAlertSuppress -bool true'
  end
end
