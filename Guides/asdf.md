## Installation
- Follow [this](https://asdf-vm.com/guide/getting-started.html)

## [Setup python](https://github.com/asdf-community/asdf-python)
- ``asdf plugin-add python``
- ``asdf list-all python``
- ``asdf install python latest``
- ``asdf global python latest``
- ``asdf reshim python``   <-- whenever any module is installed via pip

## [Setup java](https://github.com/halcyon/asdf-java)
- ``asdf plugin-add java``
- ``asdf list-all java openjdk``
- ``asdf install java openjdk-22.0.1``
- ``asdf global java openjdk-22.0.1``
- ``. ~/.asdf/plugins/java/set-java-home.zsh``
- ``echo 'java_macos_integration_enable=yes' >> ~/.asdfrc``

## [Setup dotnet](https://github.com/hensou/asdf-dotnet)
- ``asdf plugin add dotnet``
- ``asdf list-all dotnet``
- ``asdf install dotnet latest``
- ``asdf global dotnet latest``
- ``. ~/.asdf/plugins/dotnet/set-dotnet-env.zsh``
