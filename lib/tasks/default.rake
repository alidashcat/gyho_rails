# frozen_string_literal: true

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined? :default

task default: %i[
  rubocop
  rspec
  cucumber
  random_colourful_animal
  gyho_success
]

task :gyho_success do
  success = <<EOS
                                   |>>>
                                  |
                    |>>>      _  _|_  _         |>>>
                    |        |;| |;| |;|        |
                _  _|_  _    \\.    .  /    _  _|_  _
               |;|_|;|_|;|    \\:. ,  /    |;|_|;|_|;|
               \\..      /    ||;   . |    \\.    .  /
                \\.  ,  /     ||:  .  |     \\:  .  /
                 ||:   |_   _ ||_ . _ | _   _||:   |
                 ||:  .|||_|;|_|;|_|;|_|;|_|;||:.  |
                 ||:   ||.    .     .      . ||:  .|
                 ||: . || .     . .   .  ,   ||:   |
                 ||:   ||:  ,  _______   .   ||: , | 
                 ||:   || .   /+++++++\    . ||:   |
                 ||:   ||.    |+++++++| .    ||: . |
              __ ||: . ||: ,  |+++++++|.  . _||_   |
     ____--`~    '--~~__|.    |+++++__|----~    ~`---,              ___
-~--~                   ~---__|,--~'                  ~~----_____-~'   `~----~~
The Gnome Castle

░██╗░░░░░░░██╗░█████╗░░█████╗░██████╗░██╗███╗░░██╗░██████╗░████████╗░█████╗░███╗░░██╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗██║████╗░██║██╔════╝░╚══██╔══╝██╔══██╗████╗░██║██║
░╚██╗████╗██╔╝██║░░██║██║░░██║██████╔╝██║██╔██╗██║██║░░██╗░░░░██║░░░██║░░██║██╔██╗██║██║
░░████╔═████║░██║░░██║██║░░██║██╔═══╝░██║██║╚████║██║░░╚██╗░░░██║░░░██║░░██║██║╚████║╚═╝
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝██║░░░░░██║██║░╚███║╚██████╔╝░░░██║░░░╚█████╔╝██║░╚███║██╗
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░╚══╝░╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚══╝╚═╝

EOS
  sh "afplay lib/batmansound.mp3 || echo GYHO Woo!"
  puts success
end