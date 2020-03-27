cask 'yubioath-desktop-beta' do
  version '5.0.3-beta2'
  sha256 '53f3240292f37432c5df60d8085261e64fb0359471b02e233b2f4e0ced38738f'
  url "https://github.com/Yubico/yubioath-desktop/releases/download/yubioath-desktop-5.0.3-beta2/yubioath-desktop-5.0.3-beta2-mac.pkg"
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
