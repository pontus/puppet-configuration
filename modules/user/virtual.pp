# virtual.pp
#
# People accounts of interest as virtual resources

class user::virtual {
    @user { "pontus":
        ensure  => "present",
        comment => "Pontus Freyhult",
        shell   => "/bin/bash",
    }

    @user { "eva":
        ensure  => "present",
        comment => "Eva Freyhult",
        shell   => "/bin/bash",
    }
}

