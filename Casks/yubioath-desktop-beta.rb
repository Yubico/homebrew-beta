cask 'yubioath-desktop-beta' do
  version '5.0.3-beta1'
  sha256 'c590c9e513c998b7b136ddfa5086a7f27913292fd9c45c1598dfc709f99d8b3c'
  url "https://github.com/Yubico/yubioath-desktop/releases/download/yubioath-desktop-5.0.3-beta1/yubioath-desktop-5.0.3-beta1-mac.pkg"
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
