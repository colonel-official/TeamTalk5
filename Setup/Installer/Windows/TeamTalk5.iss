; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=TeamTalk5
AppVerName=TeamTalk 5
AppPublisher=BearWare.dk
AppPublisherURL=http://www.bearware.dk
AppSupportURL=http://www.bearware.dk
AppUpdatesURL=http://www.bearware.dk
DefaultDirName={pf}\TeamTalk5
DefaultGroupName=TeamTalk 5
AllowNoIcons=yes
OutputBaseFilename=TeamTalk_v5.8.1.5047_Setup
SetupIconFile=c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\images\teamtalk.ico
Compression=lzma/ultra64
SolidCompression=yes
LicenseFile=License.txt
ArchitecturesInstallIn64BitMode=x64


[Types]
Name: "i_client"; Description: "TeamTalk 5 Client"
Name: "i_full"; Description: "TeamTalk 5 Client & Server"
Name: "i_classic"; Description: "TeamTalk 5 Classic Client for Accessibility"
Name: "i_classic_full"; Description: "TeamTalk 5 Classic Client for Accessibility & Server"

[Components]
Name: "client"; Description: "Client files"; Types: i_client i_full; Flags: fixed
Name: "classic"; Description: "Classic Client files"; Types: i_classic i_classic_full; Flags: fixed
Name: "server"; Description: "Server files"; Types: i_full i_classic_full

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;x86
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\release\TeamTalk5.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\TeamTalk5Classic.exe"; DestDir: "{app}"; Components: classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Library\TeamTalk_DLL\TeamTalk5.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x86\dolapi32.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x86\nvdaControllerClient32.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x86\SAAPI32.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x86\Tolk.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Server\tt5svc.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: not Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Server\tt5srv.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: not Is64BitInstallMode;
;x64
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\qtTeamTalk\release\TeamTalk5.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\TeamTalkClassic\TeamTalk5Classic.exe"; DestDir: "{app}"; Components: classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Library\TeamTalk_DLL\TeamTalk5.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x64\nvdaControllerClient64.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x64\SAAPI64.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "z:\distributions\tt5dist\accessibility\tolk\x64\Tolk.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Server\tt5svc.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Server\tt5srv.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;

;cfg files
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{app}"; DestName: "TeamTalk5.ini.default"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Windows\TeamTalk5Classic.xml"; DestDir: "{app}"; DestName: "TeamTalk5Classic.xml.default"; Components: classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Server\Windows\tt5svc_install.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Server\Windows\tt5svc_uninstall.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Server\Windows\tt5srv_console.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{userappdata}\BearWare.dk"; Components: client; Flags: ignoreversion onlyifdoesntexist;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Windows\TeamTalk5Classic.xml"; DestDir: "{userappdata}\BearWare.dk"; Components: classic; Flags: ignoreversion onlyifdoesntexist;
Source: "License.txt"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Documentation\TeamTalk\output\TeamTalk5.chm"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion;
;wave files
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\broadcast_msg.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\channel_msg.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\filetx_complete.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\fileupdate.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\hotkey.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\newuser.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\questionmode.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\removeuser.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\serverlost.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\user_msg.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\voiceact_off.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\voiceact_on.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\vox_disable.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\vox_enable.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\vox_ME_disable.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Majorly-G\vox_ME_enable.wav"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\channel_msg.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\filetx_complete.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\logged_off.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\logged_on.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\newuser.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\removeuser.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\serverlost.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\Old\user_msg.wav"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\broadcast_msg.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\channel_msg.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\channel_msg_sent.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\desktopaccessreq.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\desktopsession.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\filetx_complete.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\fileupdate.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\hotkey.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\logged_off.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\logged_on.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\mute_all.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\newuser.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\questionmode.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\removeuser.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\serverlost.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\txqueue_start.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\txqueue_stop.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\unmute_all.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\user_msg.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\user_msg_sent.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\videosession.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\voiceact_off.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\voiceact_on.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\vox_disable.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\vox_enable.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\vox_me_disable.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x86\TeamTalk5\Setup\Client\Sounds\vox_me_enable.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
;language files
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Bulgarian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Chinese_Simplified.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Chinese_Traditional.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Croatian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Czech.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Danish.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Dutch.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\English.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\French.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\German.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Hebrew.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Hungarian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Italian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Polish.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Portuguese_BR.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Portuguese_EU.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Russian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Slovak.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Slovenian.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Spanish.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Thai.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\qtTeamTalk\languages\Turkish.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;

;classic language files
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Arabic.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Chinese_Simplified.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Chinese_Traditional.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Croatian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Czech.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Danish.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Dutch.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\English.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Estonian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Finnish.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\French.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\German.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Hungarian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Indonesian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Italian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Korean.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Latvian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Persian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Polish.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Portuguese_BR.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Portuguese_PT.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Romanian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Russian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Slovak.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Slovenian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Spanish.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Thai.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Turkish.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Ukrainian.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;
Source: "c:\tt5dist\TeamTalk5_x86\TeamTalk5\Client\TeamTalkClassic\lng_classic\Vietnamese.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client;
Name: "{group}\TeamTalk 5 Classic"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic;
Name: "{commondesktop}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: desktopicon;
Name: "{commondesktop}\TeamTalk 5 Classic"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic; Tasks: desktopicon;
Name: "{group}\TeamTalk 5 Help"; Filename: "{app}\TeamTalk5.chm"; WorkingDir: "{app}";
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TeamTalk"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: quicklaunchicon;
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TeamTalk"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic; Tasks: quicklaunchicon;
Name: "{group}\TeamTalk 5 NT Service\Install TeamTalk NT Service"; Filename: "{app}\tt5svc_install.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 NT Service\Uninstall TeamTalk NT Service"; Filename: "{app}\tt5svc_uninstall.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 Console Server"; Filename: "{app}\tt5srv_console.bat"; WorkingDir: "{app}"; Components: server;

[Run]
Filename: "{app}\TeamTalk5.exe"; Description: "{cm:LaunchProgram,TeamTalk}"; WorkingDir: "{app}"; Parameters: ""; Components: client; Flags: postinstall nowait skipifsilent
Filename: "{app}\TeamTalk5Classic.exe"; Description: "{cm:LaunchProgram,TeamTalk}"; WorkingDir: "{app}"; Parameters: ""; Components: classic; Flags: postinstall nowait skipifsilent

[Registry]
Root: HKCR; Subkey: "TeamTalk"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk"; ValueType: string; ValueData: "TeamTalk Host Settings"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"""; Components: classic; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"" ""%1"""; Components: classic; Flags: uninsdeletekey

Root: HKCR; Subkey: "tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueData: "URL:TeamTalk Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"""; Components: classic; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"" ""%1"""; Components: classic; Flags: uninsdeletekey

Root: HKCR; Subkey: ".tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: ".tt"; ValueType: string; ValueData: "TeamTalk"; Flags: uninsdeletekey

Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; ValueName: "InstallPath"; ValueData: "{app}"


