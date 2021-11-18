const fs = require('fs');
const path = require('path');

const CUSTOM_VERBS = `
0x20 0x500 0x24
0x20 0x400 0x41
0x20 0x500 0x26
0x20 0x400 0x2
0x20 0x400 0x0
0x20 0x400 0x0
0x20 0x4b0 0x20
0x20 0x500 0x24
0x20 0x400 0x42
0x20 0x500 0x26
0x20 0x400 0x2
0x20 0x400 0x0
0x20 0x400 0x0
0x20 0x4b0 0x20`;

// ========== DO NOT EDIT THE CONTENT BELOW THE LINE UNLESS YOU KNOW WHAT YOU ARE DOING ==========

const FILE_HEADER = `<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"><plist version="1.0"><array>`;
const FILE_FOOTER = `</array></plist>`;

const verbs = CUSTOM_VERBS.split('\n').filter(Boolean).map(verb => verb.split(' '));

const result = `${FILE_HEADER}${verbs.map(verb => {
  return `<dict>
  <key>Comment</key>
  <string>${verb.join(' ')}</string>
  <key>Enabled</key>
  <true />
  <key>Node ID</key>
  <string>${verb[0]}</string>
  <key>On Boot</key>
  <true/>
  <key>On Connect</key>
  <false/>
  <key>On Disconnect</key>
  <true/>
  <key>On Mute</key>
  <false/>
  <key>On Sleep</key>
  <false/>
  <key>On Unmute</key>
  <false/>
  <key>On Wake</key>
  <true/>
  <key>Param</key>
  <string>${verb[2]}</string>
  <key>Verb</key>
  <string>${verb[1]}</string>
</dict>\n`;
}).join('')}${FILE_FOOTER}`

fs.writeFileSync(path.resolve(__dirname, 'ALCPlugFixConfig.plist'), result, 'utf-8');
