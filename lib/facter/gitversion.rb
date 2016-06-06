# gitversion.rb
Facter.add('gitversion') do
  setcode do
    gitversion = Facter::Core::Execution.exec('git --version')
  end
end

