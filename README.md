# sentry-usbkey

This is a little udev-activated script to talk with the sentry server to allow door control on the connection of a registered usb key.

The script can also be used by users to create a request for registration of their usb key.  Just mount your device on your computer, find some file on the device that will act as the key file, and run:

    sentry-usbkey req username /path/to/usbkey/file

The key file is only read (i.e. never modified), and can be anything you want.  It just cannot change or change location once you've registered, otherwise you will need to re-register.
