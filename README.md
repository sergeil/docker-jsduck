# How to use this image

If you like typing a lot you can run image manually like this:

    docker run -it --rm -v `pwd`:/workdir sergeil/jsduck jsduck [you parameters]

or if you want to make your life easier add this to your bash profile (~/.bashrc):

    jsduck() {
        docker run -it --rm -v `pwd`:/workdir sergeil/jsduck jsduck $@
    }
    export -f jsduck

when you added this function to your profile to make use of it you need to reload it:

    . ~/.bashrc

once alias is imported then you can use jsduck as it would have been installed on your host machine, yay!