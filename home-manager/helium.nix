{ config, pkgs, inputs, ... }:

{
	imports = [
		inputs.helium-flake.homeModules.default
	];
	
	programs.helium = {
		enable = true;
		flags = [
			"--ozone-platform-hint=auto"
		];
		policies = {
			"BrowserSignin" = 0;
			"PasswordManagerEnabled" = false;
			"SyncDisabled" = true;
			"SpellcheckEnabled" = false;
			"SitePerProcess" = true;
			"ExtensionInstallForcelist" = [
				"cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx"
				"dbepggeogbaibhgnhhndojpepiihcmeb;https://clients2.google.com/service/update2/crx"
			];
			"MandatoryExtensionsForIncognitoNavigation" = [
				"cjpalhdlnbpafiamejdnhcphjbkeiagm"
				"dbepggeogbaibhgnhhndojpepiihcmeb"
			];
			"MetricsReportingEnabled" = false;
			"CloudReportingEnabled" = false;
			"SafeBrowsingExtendedReportingEnabled" = false;
			"FeedbackAllowed" = false;
			"DomainReliabilityAllowed" = false;
		};
	};
}
