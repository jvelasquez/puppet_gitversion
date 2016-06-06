# gitversion.rb
Facter.add(:gitversion) do
  setcode do
    if Facter::Util::Resolution.which('git')
      gitversion = Facter::Util::Resolution.exec('git --version')
      %r{^git version ([\w\.]+)}.match(gitversion)[1]
    end
  end
end
