//AUDIO DEVICE SELECTION IN SUPERCOLLIDER FOR USING MULTIPLE OUTPUT AUDIO CHANNELS

// prints the list of the available devices
ServerOptions.devices;

// before booting the server access the default server options and save them inside a variable -> 'o'
o = Server.default.options;

// access the options and change the amount of channels within the Output Bus
o.numOutputBusChannels = 6;

o.device ="Aggregate Device";     // use a specific soundcard with multiple outputs
// *** Aggregate Device on Mac allows you to combine outputs for instance
// the speakers inside the macbook and a bluetooth speaker
o.device = nil;            // use the system default soundcard

// boot or reboot;
Server.default.boot;
// or
Server.default.reboot;

// specify a device
o.device ="Aggregate Device";     // use a specific soundcard

// *** Aggregate Device on Mac allows you to combine outputs for instance
// the speakers inside the macbook and a bluetooth speaker
o.device = nil;            // use the system default soundcard
