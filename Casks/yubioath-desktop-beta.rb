cask 'yubioath-desktop-beta' do
  version '5.0.4-beta1'
  sha256 'f4b1047cf24309bb7df9e5736d4ce303f33f02a8a950307f29dcf2219def7d4d'
  url 'https://github.com/Yubico/yubioath-desktop/releases/download/yubioath-desktop-5.0.4-beta1/yubioath-desktop-5.0.4-beta1-mac.pkg'
  name 'Yubico Authenticator (Beta)'
  homepage 'https://developers.yubico.com/yubioath-desktop/'
  depends_on macos: '>= :high_sierra'
  pkg "yubioath-desktop-#{version}-mac.pkg"
  uninstall signal:  ['TERM', 'com.yubico.yubioath'],
            pkgutil: 'com.yubico.yubioath'
  zap trash: [
               '~/Library/Caches/Yubico/Yubico Authenticator',
               '~/Library/Preferences/com.com-yubico.Yubico Authenticator.plist',
               '~/Library/Saved Application State/com.yubico.yubioath.savedState',
             ],
      rmdir: '~/Library/Caches/Yubico'
end
