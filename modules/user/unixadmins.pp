# unixadmins.pp
#
# Realize the members of the Unix team and include any contractors

class user::unixadmins inherits user::virtual {
    # Realize our team members
    realize(
        User["pontus"]
    )
}

