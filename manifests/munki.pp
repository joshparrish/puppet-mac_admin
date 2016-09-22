class profile::munki {
    $repourl					          = "http://munki.cfaserv.astate.edu/"
    $clientidentifier			      = hiera('profile::munki::clientidentifier')
    $suppressautoinstall		    = hiera('profile::munki::suppressautoinstall')
    $suppress_stop				      = hiera('profile::munki::suppress_stop')
    $bootstrap					        = hiera('profile::munki::bootstrap')
  	$suppressusernotification 	= hiera('profile::munki::suppressusernotification')
    $install_apple_updates		  = hiera('profile::munki::install_apple_updates')
    $packageurl					        = ''
    $catalogurl					        = ''
	  $manifesturl				        = ''
    $additionalhttpheaders		  = ''
    $unattendedappleupdates		  = false
    $suppressloginwindowinstall = true

    ##Install the profile
   	mac_profiles_handler::manage { 'edu.astate.munkiprefs':
        ensure      => present,
        file_source => template('profile/edu.astate.munkiprefs.erb'),
        type        => 'template'
    }
}


