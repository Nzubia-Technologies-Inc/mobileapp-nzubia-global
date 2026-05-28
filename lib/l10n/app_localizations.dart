import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ht'),
    Locale('pt'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Nzubia'**
  String get appTitle;

  /// No description provided for @shipment.
  ///
  /// In en, this message translates to:
  /// **'Shipment'**
  String get shipment;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @profileAndSettings.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileAndSettings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @paymentHistory.
  ///
  /// In en, this message translates to:
  /// **'Payment History'**
  String get paymentHistory;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @helpSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupport;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @areYouSureLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSureLogout;

  /// No description provided for @areYouSureDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? This action cannot be undone.'**
  String get areYouSureDelete;

  /// No description provided for @agentDeleteRequest.
  ///
  /// In en, this message translates to:
  /// **'Agents must request account deletion from the administrator. Would you like to submit a request?'**
  String get agentDeleteRequest;

  /// No description provided for @submitRequest.
  ///
  /// In en, this message translates to:
  /// **'Submit Request'**
  String get submitRequest;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @shipmentDetails.
  ///
  /// In en, this message translates to:
  /// **'Shipment Details'**
  String get shipmentDetails;

  /// No description provided for @route.
  ///
  /// In en, this message translates to:
  /// **'Route'**
  String get route;

  /// No description provided for @origin.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get origin;

  /// No description provided for @destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get destination;

  /// No description provided for @recipientDetails.
  ///
  /// In en, this message translates to:
  /// **'Recipient Details'**
  String get recipientDetails;

  /// No description provided for @senderCustomerDetails.
  ///
  /// In en, this message translates to:
  /// **'Sender / Customer Details'**
  String get senderCustomerDetails;

  /// No description provided for @cargoManifest.
  ///
  /// In en, this message translates to:
  /// **'Cargo Manifest'**
  String get cargoManifest;

  /// No description provided for @trackingHistory.
  ///
  /// In en, this message translates to:
  /// **'Tracking History'**
  String get trackingHistory;

  /// No description provided for @estimatedPrice.
  ///
  /// In en, this message translates to:
  /// **'Estimated Price'**
  String get estimatedPrice;

  /// No description provided for @rateReviewAgent.
  ///
  /// In en, this message translates to:
  /// **'Rate & Review Agent'**
  String get rateReviewAgent;

  /// No description provided for @updateStatus.
  ///
  /// In en, this message translates to:
  /// **'Update Status'**
  String get updateStatus;

  /// No description provided for @submitQuote.
  ///
  /// In en, this message translates to:
  /// **'Submit Quote'**
  String get submitQuote;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @viewQuotesBids.
  ///
  /// In en, this message translates to:
  /// **'View Quotes & Bids'**
  String get viewQuotesBids;

  /// No description provided for @confirmReceipt.
  ///
  /// In en, this message translates to:
  /// **'Confirm Receipt'**
  String get confirmReceipt;

  /// No description provided for @newShipment.
  ///
  /// In en, this message translates to:
  /// **'New Shipment'**
  String get newShipment;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @recipient.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get recipient;

  /// No description provided for @cargo.
  ///
  /// In en, this message translates to:
  /// **'Cargo'**
  String get cargo;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @recipientName.
  ///
  /// In en, this message translates to:
  /// **'Recipient Name'**
  String get recipientName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @detailedAddress.
  ///
  /// In en, this message translates to:
  /// **'Detailed Address'**
  String get detailedAddress;

  /// No description provided for @originAddress.
  ///
  /// In en, this message translates to:
  /// **'Origin Address'**
  String get originAddress;

  /// No description provided for @destinationAddress.
  ///
  /// In en, this message translates to:
  /// **'Destination Address'**
  String get destinationAddress;

  /// No description provided for @scheduleOptional.
  ///
  /// In en, this message translates to:
  /// **'Schedule (Optional)'**
  String get scheduleOptional;

  /// No description provided for @pickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get pickup;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDate;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @weightLbs.
  ///
  /// In en, this message translates to:
  /// **'Weight (lbs)'**
  String get weightLbs;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @fragile.
  ///
  /// In en, this message translates to:
  /// **'Fragile'**
  String get fragile;

  /// No description provided for @perishable.
  ///
  /// In en, this message translates to:
  /// **'Perishable'**
  String get perishable;

  /// No description provided for @addCargoItem.
  ///
  /// In en, this message translates to:
  /// **'Add Cargo Item'**
  String get addCargoItem;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from Gallery'**
  String get gallery;

  /// No description provided for @manifest.
  ///
  /// In en, this message translates to:
  /// **'Manifest'**
  String get manifest;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @dimensions.
  ///
  /// In en, this message translates to:
  /// **'Dimensions'**
  String get dimensions;

  /// No description provided for @tapToAddPhotos.
  ///
  /// In en, this message translates to:
  /// **'Tap to add photos'**
  String get tapToAddPhotos;

  /// No description provided for @requestInsurance.
  ///
  /// In en, this message translates to:
  /// **'Request Insurance'**
  String get requestInsurance;

  /// No description provided for @insuranceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Protect your shipment against loss or damage.'**
  String get insuranceSubtitle;

  /// No description provided for @estimatedPeriod.
  ///
  /// In en, this message translates to:
  /// **'Estimated Period'**
  String get estimatedPeriod;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get success;

  /// No description provided for @zelleSettings.
  ///
  /// In en, this message translates to:
  /// **'Payment Settings'**
  String get zelleSettings;

  /// No description provided for @zelleEmail.
  ///
  /// In en, this message translates to:
  /// **'Zelle Email'**
  String get zelleEmail;

  /// No description provided for @zellePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Zelle Phone Number'**
  String get zellePhoneNumber;

  /// No description provided for @savePayoutInfo.
  ///
  /// In en, this message translates to:
  /// **'Save Payout Info'**
  String get savePayoutInfo;

  /// No description provided for @payoutInfoUpdated.
  ///
  /// In en, this message translates to:
  /// **'Payout information updated successfully'**
  String get payoutInfoUpdated;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @helloWithName.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}!'**
  String helloWithName(Object name);

  /// No description provided for @agentPortal.
  ///
  /// In en, this message translates to:
  /// **'Agent Portal'**
  String get agentPortal;

  /// No description provided for @requested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get requested;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @accountUnderReview.
  ///
  /// In en, this message translates to:
  /// **'Account under review'**
  String get accountUnderReview;

  /// No description provided for @accessRestricted.
  ///
  /// In en, this message translates to:
  /// **'Access to shipments is restricted until verified.'**
  String get accessRestricted;

  /// No description provided for @verificationPending.
  ///
  /// In en, this message translates to:
  /// **'Verification Pending'**
  String get verificationPending;

  /// No description provided for @verificationFailed.
  ///
  /// In en, this message translates to:
  /// **'Verification Failed'**
  String get verificationFailed;

  /// No description provided for @actionRequired.
  ///
  /// In en, this message translates to:
  /// **'Action Required'**
  String get actionRequired;

  /// No description provided for @totalEarnings.
  ///
  /// In en, this message translates to:
  /// **'Total Earnings'**
  String get totalEarnings;

  /// No description provided for @noShipmentsFound.
  ///
  /// In en, this message translates to:
  /// **'No shipments found'**
  String get noShipmentsFound;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @finance.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get finance;

  /// No description provided for @financeAndEarnings.
  ///
  /// In en, this message translates to:
  /// **'Finance & Earnings'**
  String get financeAndEarnings;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @payoutMethod.
  ///
  /// In en, this message translates to:
  /// **'Payout Method'**
  String get payoutMethod;

  /// No description provided for @totalEarned.
  ///
  /// In en, this message translates to:
  /// **'Total Earned'**
  String get totalEarned;

  /// No description provided for @payoutsEnabled.
  ///
  /// In en, this message translates to:
  /// **'Payouts Enabled'**
  String get payoutsEnabled;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @paidOut.
  ///
  /// In en, this message translates to:
  /// **'Paid Out'**
  String get paidOut;

  /// No description provided for @bankAccountConnected.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Connected'**
  String get bankAccountConnected;

  /// No description provided for @connectBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Connect Bank Account'**
  String get connectBankAccount;

  /// No description provided for @readyToReceivePayouts.
  ///
  /// In en, this message translates to:
  /// **'Ready to receive payouts'**
  String get readyToReceivePayouts;

  /// No description provided for @linkBankToReceivePayouts.
  ///
  /// In en, this message translates to:
  /// **'Link your bank to receive payouts'**
  String get linkBankToReceivePayouts;

  /// No description provided for @linkBank.
  ///
  /// In en, this message translates to:
  /// **'Link Bank'**
  String get linkBank;

  /// No description provided for @preferredPayoutMethod.
  ///
  /// In en, this message translates to:
  /// **'Preferred Payout Method'**
  String get preferredPayoutMethod;

  /// No description provided for @choosePayoutMethod.
  ///
  /// In en, this message translates to:
  /// **'Choose how you would like to receive your earnings.'**
  String get choosePayoutMethod;

  /// No description provided for @stripeConnect.
  ///
  /// In en, this message translates to:
  /// **'Stripe Connect'**
  String get stripeConnect;

  /// No description provided for @zelleTransfer.
  ///
  /// In en, this message translates to:
  /// **'Zelle Transfer'**
  String get zelleTransfer;

  /// No description provided for @manual.
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get manual;

  /// No description provided for @payoutMethodActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get payoutMethodActive;

  /// No description provided for @payoutMethodNotConnected.
  ///
  /// In en, this message translates to:
  /// **'Not Connected'**
  String get payoutMethodNotConnected;

  /// No description provided for @stripeConnectTitle.
  ///
  /// In en, this message translates to:
  /// **'STRIPE CONNECT'**
  String get stripeConnectTitle;

  /// No description provided for @manualTransferTitle.
  ///
  /// In en, this message translates to:
  /// **'MANUAL TRANSFER'**
  String get manualTransferTitle;

  /// No description provided for @zelleEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Zelle Registered Email'**
  String get zelleEmailLabel;

  /// No description provided for @zellePhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Zelle Registered Phone'**
  String get zellePhoneLabel;

  /// No description provided for @savePayoutSettings.
  ///
  /// In en, this message translates to:
  /// **'Save Payout Settings'**
  String get savePayoutSettings;

  /// No description provided for @stripePayout.
  ///
  /// In en, this message translates to:
  /// **'Stripe Connect'**
  String get stripePayout;

  /// No description provided for @zellePayout.
  ///
  /// In en, this message translates to:
  /// **'Zelle Transfer'**
  String get zellePayout;

  /// No description provided for @stripePayoutInfo.
  ///
  /// In en, this message translates to:
  /// **'Stripe payouts are sent directly to your connected bank account. Ensure your Stripe account is fully verified.'**
  String get stripePayoutInfo;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get noTransactionsYet;

  /// No description provided for @trackingCode.
  ///
  /// In en, this message translates to:
  /// **'Tracking Code'**
  String get trackingCode;

  /// No description provided for @shareLink.
  ///
  /// In en, this message translates to:
  /// **'Share Link'**
  String get shareLink;

  /// No description provided for @qrCode.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qrCode;

  /// No description provided for @trackingQrcodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Tracking QR Code'**
  String get trackingQrcodeTitle;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Tracking number copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @quotesAndBids.
  ///
  /// In en, this message translates to:
  /// **'Quotes & Bids'**
  String get quotesAndBids;

  /// No description provided for @yourBids.
  ///
  /// In en, this message translates to:
  /// **'Your Bids'**
  String get yourBids;

  /// No description provided for @estimatedDelivery.
  ///
  /// In en, this message translates to:
  /// **'Estimated Delivery'**
  String get estimatedDelivery;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @valuedCustomer.
  ///
  /// In en, this message translates to:
  /// **'Valued Customer'**
  String get valuedCustomer;

  /// No description provided for @contactInfoHidden.
  ///
  /// In en, this message translates to:
  /// **'Contact info hidden until assigned'**
  String get contactInfoHidden;

  /// No description provided for @contactDetailsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Contact details unavailable'**
  String get contactDetailsUnavailable;

  /// No description provided for @chatSelfError.
  ///
  /// In en, this message translates to:
  /// **'You cannot chat with yourself'**
  String get chatSelfError;

  /// No description provided for @yesConfirm.
  ///
  /// In en, this message translates to:
  /// **'Yes, Confirm'**
  String get yesConfirm;

  /// No description provided for @selectNewStatus.
  ///
  /// In en, this message translates to:
  /// **'Select New Status:'**
  String get selectNewStatus;

  /// No description provided for @descriptionOptional.
  ///
  /// In en, this message translates to:
  /// **'Description (Optional)'**
  String get descriptionOptional;

  /// No description provided for @inCustoms.
  ///
  /// In en, this message translates to:
  /// **'In Customs'**
  String get inCustoms;

  /// No description provided for @customsCleared.
  ///
  /// In en, this message translates to:
  /// **'Customs Cleared'**
  String get customsCleared;

  /// No description provided for @readyForPickup.
  ///
  /// In en, this message translates to:
  /// **'Ready for Pickup'**
  String get readyForPickup;

  /// No description provided for @inTransit.
  ///
  /// In en, this message translates to:
  /// **'In Transit'**
  String get inTransit;

  /// No description provided for @arrivedAtDestination.
  ///
  /// In en, this message translates to:
  /// **'Arrived at Destination'**
  String get arrivedAtDestination;

  /// No description provided for @delayed.
  ///
  /// In en, this message translates to:
  /// **'Delayed'**
  String get delayed;

  /// No description provided for @assignedAgent.
  ///
  /// In en, this message translates to:
  /// **'Assigned Agent'**
  String get assignedAgent;

  /// No description provided for @verifiedAgent.
  ///
  /// In en, this message translates to:
  /// **'Verified Agent'**
  String get verifiedAgent;

  /// No description provided for @agentInformation.
  ///
  /// In en, this message translates to:
  /// **'Agent Information'**
  String get agentInformation;

  /// No description provided for @verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get verified;

  /// No description provided for @pendingVerification.
  ///
  /// In en, this message translates to:
  /// **'Pending Verification'**
  String get pendingVerification;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @infoRequested.
  ///
  /// In en, this message translates to:
  /// **'Info Requested'**
  String get infoRequested;

  /// No description provided for @notSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Not Submitted'**
  String get notSubmitted;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get company;

  /// No description provided for @individual.
  ///
  /// In en, this message translates to:
  /// **'Individual'**
  String get individual;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Provider'**
  String get business;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @serviceRegions.
  ///
  /// In en, this message translates to:
  /// **'Service Regions'**
  String get serviceRegions;

  /// No description provided for @yearsInBusinessLabel.
  ///
  /// In en, this message translates to:
  /// **'Years of Experience'**
  String get yearsInBusinessLabel;

  /// No description provided for @fleetSizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Fleet Size'**
  String get fleetSizeLabel;

  /// No description provided for @licenseLabel.
  ///
  /// In en, this message translates to:
  /// **'Professional ID'**
  String get licenseLabel;

  /// No description provided for @reviewsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} reviews'**
  String reviewsCount(Object count);

  /// No description provided for @deletionRequestSent.
  ///
  /// In en, this message translates to:
  /// **'Deletion request sent to Admin'**
  String get deletionRequestSent;

  /// No description provided for @deletingAccount.
  ///
  /// In en, this message translates to:
  /// **'Deleting account...'**
  String get deletingAccount;

  /// No description provided for @helpSupportHeader.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupportHeader;

  /// No description provided for @emailSupport.
  ///
  /// In en, this message translates to:
  /// **'Email Support'**
  String get emailSupport;

  /// No description provided for @callUs.
  ///
  /// In en, this message translates to:
  /// **'Call Us'**
  String get callUs;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @confirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmNewPassword;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @passwordChangedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully!'**
  String get passwordChangedSuccess;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @minCharacters.
  ///
  /// In en, this message translates to:
  /// **'Min {count} characters'**
  String minCharacters(Object count);

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @joinNetwork.
  ///
  /// In en, this message translates to:
  /// **'Join the Nzubia network; access to hassle-free export and import'**
  String get joinNetwork;

  /// No description provided for @logisticsAgent.
  ///
  /// In en, this message translates to:
  /// **'Logistics Agent'**
  String get logisticsAgent;

  /// No description provided for @registerAsBusiness.
  ///
  /// In en, this message translates to:
  /// **'Register as an Exporter?'**
  String get registerAsBusiness;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Legal Name'**
  String get companyName;

  /// No description provided for @agentVerification.
  ///
  /// In en, this message translates to:
  /// **'Account Verification'**
  String get agentVerification;

  /// No description provided for @verificationSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Verification Submitted! Waiting for approval.'**
  String get verificationSubmitted;

  /// No description provided for @verifyIdentity.
  ///
  /// In en, this message translates to:
  /// **'Verify your Identity'**
  String get verifyIdentity;

  /// No description provided for @verifyIdentitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'To start quoting on shipments, we need to verify your identity and location details.'**
  String get verifyIdentitySubtitle;

  /// No description provided for @businessAddressBaseLocation.
  ///
  /// In en, this message translates to:
  /// **'Service Location'**
  String get businessAddressBaseLocation;

  /// No description provided for @serviceRadiusKm.
  ///
  /// In en, this message translates to:
  /// **'Service Radius (km)'**
  String get serviceRadiusKm;

  /// No description provided for @serviceRadiusHelper.
  ///
  /// In en, this message translates to:
  /// **'How far from your base location can you operate?'**
  String get serviceRadiusHelper;

  /// No description provided for @businessRegistrationNumber.
  ///
  /// In en, this message translates to:
  /// **'Registration Number'**
  String get businessRegistrationNumber;

  /// No description provided for @taxIdEin.
  ///
  /// In en, this message translates to:
  /// **'Tax ID / EIN'**
  String get taxIdEin;

  /// No description provided for @licenseNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'License Number'**
  String get licenseNumberLabel;

  /// No description provided for @licenseNumberHelper.
  ///
  /// In en, this message translates to:
  /// **'Transport/Shipping license number'**
  String get licenseNumberHelper;

  /// No description provided for @idType.
  ///
  /// In en, this message translates to:
  /// **'ID Type'**
  String get idType;

  /// No description provided for @nationalId.
  ///
  /// In en, this message translates to:
  /// **'National ID'**
  String get nationalId;

  /// No description provided for @passport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get passport;

  /// No description provided for @driversLicense.
  ///
  /// In en, this message translates to:
  /// **'Driver\'s License'**
  String get driversLicense;

  /// No description provided for @idNumber.
  ///
  /// In en, this message translates to:
  /// **'ID Number'**
  String get idNumber;

  /// No description provided for @uploadIdDocument.
  ///
  /// In en, this message translates to:
  /// **'Upload ID Document'**
  String get uploadIdDocument;

  /// No description provided for @uploadSelfie.
  ///
  /// In en, this message translates to:
  /// **'Upload Selfie'**
  String get uploadSelfie;

  /// No description provided for @documentPdfDoc.
  ///
  /// In en, this message translates to:
  /// **'Document (PDF/Doc)'**
  String get documentPdfDoc;

  /// No description provided for @fileSelected.
  ///
  /// In en, this message translates to:
  /// **'File Selected: {fileName}'**
  String fileSelected(Object fileName);

  /// No description provided for @serviceRegionsAdd.
  ///
  /// In en, this message translates to:
  /// **'Service Regions (Add Locations)'**
  String get serviceRegionsAdd;

  /// No description provided for @searchRegions.
  ///
  /// In en, this message translates to:
  /// **'Search States / Regions / Cities'**
  String get searchRegions;

  /// No description provided for @cargoSpecializations.
  ///
  /// In en, this message translates to:
  /// **'Cargo Specializations'**
  String get cargoSpecializations;

  /// No description provided for @selectCargos.
  ///
  /// In en, this message translates to:
  /// **'Select cargos'**
  String get selectCargos;

  /// No description provided for @uploadInsuranceCertificate.
  ///
  /// In en, this message translates to:
  /// **'Upload Insurance Certificate'**
  String get uploadInsuranceCertificate;

  /// No description provided for @submitVerification.
  ///
  /// In en, this message translates to:
  /// **'Submit Verification'**
  String get submitVerification;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @verificationRequiredForThisFeature.
  ///
  /// In en, this message translates to:
  /// **'Verification required for this feature'**
  String get verificationRequiredForThisFeature;

  /// No description provided for @accessRestrictedUntilVerified.
  ///
  /// In en, this message translates to:
  /// **'Access to shipments is restricted until verified.'**
  String get accessRestrictedUntilVerified;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @confirmReceiptDescription.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you have received the shipment? This will release the funds to the agent.'**
  String get confirmReceiptDescription;

  /// No description provided for @receiptConfirmedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Receipt Confirmed Successfully!'**
  String get receiptConfirmedSuccessfully;

  /// No description provided for @loadingAgentDetails.
  ///
  /// In en, this message translates to:
  /// **'Loading Agent Details...'**
  String get loadingAgentDetails;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid Email'**
  String get invalidEmail;

  /// No description provided for @saveButton.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButton;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @cargos.
  ///
  /// In en, this message translates to:
  /// **'Cargos'**
  String get cargos;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @companyNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Legal Name'**
  String get companyNameLabel;

  /// No description provided for @businessRegistrationNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Registration Number'**
  String get businessRegistrationNumberLabel;

  /// No description provided for @taxIdEinLabel.
  ///
  /// In en, this message translates to:
  /// **'Tax ID / EIN'**
  String get taxIdEinLabel;

  /// No description provided for @searchStatesRegionsCities.
  ///
  /// In en, this message translates to:
  /// **'Search States / Regions / Cities'**
  String get searchStatesRegionsCities;

  /// No description provided for @serviceRegionsAddLocations.
  ///
  /// In en, this message translates to:
  /// **'Service Regions (Add Locations)'**
  String get serviceRegionsAddLocations;

  /// No description provided for @errorCreatingShipment.
  ///
  /// In en, this message translates to:
  /// **'Error creating shipment'**
  String get errorCreatingShipment;

  /// No description provided for @whoIsReceivingShipment.
  ///
  /// In en, this message translates to:
  /// **'Who is receiving this shipment?'**
  String get whoIsReceivingShipment;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name required'**
  String get nameRequired;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email required'**
  String get emailRequired;

  /// No description provided for @addressRequired.
  ///
  /// In en, this message translates to:
  /// **'Address required'**
  String get addressRequired;

  /// No description provided for @imagesTooLarge.
  ///
  /// In en, this message translates to:
  /// **'Some images were too large and skipped (Max 10MB).'**
  String get imagesTooLarge;

  /// No description provided for @errorPickingImage.
  ///
  /// In en, this message translates to:
  /// **'Error picking image'**
  String get errorPickingImage;

  /// No description provided for @manifestWithCount.
  ///
  /// In en, this message translates to:
  /// **'Manifest ({count} items)'**
  String manifestWithCount(Object count);

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @signInToManageShipments.
  ///
  /// In en, this message translates to:
  /// **'Sign in to manage your shipments'**
  String get signInToManageShipments;

  /// No description provided for @dontHaveAccountSignUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up as a customer'**
  String get dontHaveAccountSignUp;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to Login'**
  String get backToLogin;

  /// No description provided for @oneTimePassword.
  ///
  /// In en, this message translates to:
  /// **'One-Time Password'**
  String get oneTimePassword;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @verifyOtp.
  ///
  /// In en, this message translates to:
  /// **'Verify OTP'**
  String get verifyOtp;

  /// No description provided for @enterOtpSentTo.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP sent to {email}'**
  String enterOtpSentTo(Object email);

  /// No description provided for @authenticationFailure.
  ///
  /// In en, this message translates to:
  /// **'Authentication Failure'**
  String get authenticationFailure;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @bankAccountConnectedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Bank account connected successfully!'**
  String get bankAccountConnectedSuccessfully;

  /// No description provided for @connectBankAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Connect Bank Account'**
  String get connectBankAccountTitle;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get noNotifications;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @viewOffer.
  ///
  /// In en, this message translates to:
  /// **'View Offer'**
  String get viewOffer;

  /// No description provided for @insuranceIncluded.
  ///
  /// In en, this message translates to:
  /// **'Insurance Included'**
  String get insuranceIncluded;

  /// No description provided for @acceptAndPay.
  ///
  /// In en, this message translates to:
  /// **'Accept & Pay'**
  String get acceptAndPay;

  /// No description provided for @trackShipment.
  ///
  /// In en, this message translates to:
  /// **'Track Shipment'**
  String get trackShipment;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @paymentSuccessfulShipmentBooked.
  ///
  /// In en, this message translates to:
  /// **'Payment Successful! Shipment Booked.'**
  String get paymentSuccessfulShipmentBooked;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @shipmentDismissed.
  ///
  /// In en, this message translates to:
  /// **'Shipment dismissed from your view'**
  String get shipmentDismissed;

  /// No description provided for @cannotChatSelf.
  ///
  /// In en, this message translates to:
  /// **'You cannot chat with yourself'**
  String get cannotChatSelf;

  /// No description provided for @couldNotLoadCustomerDetails.
  ///
  /// In en, this message translates to:
  /// **'Could not load customer details for chat'**
  String get couldNotLoadCustomerDetails;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reviewSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Review submitted!'**
  String get reviewSubmitted;

  /// No description provided for @noRecipientContactInfo.
  ///
  /// In en, this message translates to:
  /// **'No recipient contact info available'**
  String get noRecipientContactInfo;

  /// No description provided for @checkingRecipientAccount.
  ///
  /// In en, this message translates to:
  /// **'Checking recipient account...'**
  String get checkingRecipientAccount;

  /// No description provided for @chatRequiresInfo.
  ///
  /// In en, this message translates to:
  /// **'Chat requires recipient email or phone for lookup'**
  String get chatRequiresInfo;

  /// No description provided for @addProof.
  ///
  /// In en, this message translates to:
  /// **'Add Proof (Img/Doc)'**
  String get addProof;

  /// No description provided for @requestInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Request Information'**
  String get requestInformationTitle;

  /// No description provided for @whatInfoNeeded.
  ///
  /// In en, this message translates to:
  /// **'What information do you need from the customer?'**
  String get whatInfoNeeded;

  /// No description provided for @requestSentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Request sent successfully'**
  String get requestSentSuccessfully;

  /// No description provided for @sendRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Request'**
  String get sendRequest;

  /// No description provided for @processingPayment.
  ///
  /// In en, this message translates to:
  /// **'Processing payment...'**
  String get processingPayment;

  /// No description provided for @liveBids.
  ///
  /// In en, this message translates to:
  /// **'Live Bids'**
  String get liveBids;

  /// No description provided for @quoteAcceptedShipmentLocked.
  ///
  /// In en, this message translates to:
  /// **'Quote Accepted! Shipment Locked.'**
  String get quoteAcceptedShipmentLocked;

  /// No description provided for @waitingForAgents.
  ///
  /// In en, this message translates to:
  /// **'Waiting for agents...'**
  String get waitingForAgents;

  /// No description provided for @acceptQuote.
  ///
  /// In en, this message translates to:
  /// **'Accept Quote'**
  String get acceptQuote;

  /// No description provided for @connecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting...'**
  String get connecting;

  /// No description provided for @payoutProofTitle.
  ///
  /// In en, this message translates to:
  /// **'Proof of Payment:'**
  String get payoutProofTitle;

  /// No description provided for @itemDetails.
  ///
  /// In en, this message translates to:
  /// **'Item Details'**
  String get itemDetails;

  /// No description provided for @requestMoreInfo.
  ///
  /// In en, this message translates to:
  /// **'Request More Information'**
  String get requestMoreInfo;

  /// No description provided for @infoRequestHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Please upload a clearer photo of the label...'**
  String get infoRequestHint;

  /// No description provided for @pleaseEnterMessage.
  ///
  /// In en, this message translates to:
  /// **'Please enter a message'**
  String get pleaseEnterMessage;

  /// No description provided for @requestSentToCustomer.
  ///
  /// In en, this message translates to:
  /// **'Request sent to customer'**
  String get requestSentToCustomer;

  /// No description provided for @editManifest.
  ///
  /// In en, this message translates to:
  /// **'Edit Manifest'**
  String get editManifest;

  /// No description provided for @currentManifest.
  ///
  /// In en, this message translates to:
  /// **'Current Manifest'**
  String get currentManifest;

  /// No description provided for @addNewItem.
  ///
  /// In en, this message translates to:
  /// **'Add New Item'**
  String get addNewItem;

  /// No description provided for @lLabel.
  ///
  /// In en, this message translates to:
  /// **'L'**
  String get lLabel;

  /// No description provided for @wLabel.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get wLabel;

  /// No description provided for @hLabel.
  ///
  /// In en, this message translates to:
  /// **'H'**
  String get hLabel;

  /// No description provided for @isFragileQuestion.
  ///
  /// In en, this message translates to:
  /// **'Fragile?'**
  String get isFragileQuestion;

  /// No description provided for @isPerishableQuestion.
  ///
  /// In en, this message translates to:
  /// **'Perishable?'**
  String get isPerishableQuestion;

  /// No description provided for @addPhotos.
  ///
  /// In en, this message translates to:
  /// **'Add Photos'**
  String get addPhotos;

  /// No description provided for @addItemToManifest.
  ///
  /// In en, this message translates to:
  /// **'Add Item To Manifest'**
  String get addItemToManifest;

  /// No description provided for @clickSaveToApply.
  ///
  /// In en, this message translates to:
  /// **'* Click \"Save\" in top right to apply changes.'**
  String get clickSaveToApply;

  /// No description provided for @chatWithRecipient.
  ///
  /// In en, this message translates to:
  /// **'Chat with Recipient'**
  String get chatWithRecipient;

  /// No description provided for @chatWithCustomer.
  ///
  /// In en, this message translates to:
  /// **'Chat with Customer'**
  String get chatWithCustomer;

  /// No description provided for @requestInformationTooltip.
  ///
  /// In en, this message translates to:
  /// **'Request Information'**
  String get requestInformationTooltip;

  /// No description provided for @editQuote.
  ///
  /// In en, this message translates to:
  /// **'Edit Quote'**
  String get editQuote;

  /// No description provided for @createQuote.
  ///
  /// In en, this message translates to:
  /// **'Create Quote'**
  String get createQuote;

  /// No description provided for @cargoItems.
  ///
  /// In en, this message translates to:
  /// **'Cargo Items:'**
  String get cargoItems;

  /// No description provided for @noItemsListed.
  ///
  /// In en, this message translates to:
  /// **'No items listed.'**
  String get noItemsListed;

  /// No description provided for @quoteAmountUsd.
  ///
  /// In en, this message translates to:
  /// **'Quote Amount (USD)'**
  String get quoteAmountUsd;

  /// No description provided for @pleaseEnterAmount.
  ///
  /// In en, this message translates to:
  /// **'Please enter an amount'**
  String get pleaseEnterAmount;

  /// No description provided for @shippingMethod.
  ///
  /// In en, this message translates to:
  /// **'Shipping Method'**
  String get shippingMethod;

  /// No description provided for @airFreight.
  ///
  /// In en, this message translates to:
  /// **'Air Freight'**
  String get airFreight;

  /// No description provided for @seaFreight.
  ///
  /// In en, this message translates to:
  /// **'Sea Freight'**
  String get seaFreight;

  /// No description provided for @landTransport.
  ///
  /// In en, this message translates to:
  /// **'Land Transport'**
  String get landTransport;

  /// No description provided for @insuranceType.
  ///
  /// In en, this message translates to:
  /// **'Insurance Type'**
  String get insuranceType;

  /// No description provided for @nzubiaInsurance.
  ///
  /// In en, this message translates to:
  /// **'Nzubia Insurance'**
  String get nzubiaInsurance;

  /// No description provided for @privateInsurance.
  ///
  /// In en, this message translates to:
  /// **'Private Insurance'**
  String get privateInsurance;

  /// No description provided for @noInsurance.
  ///
  /// In en, this message translates to:
  /// **'Opt-Out / No Insurance'**
  String get noInsurance;

  /// No description provided for @estDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'Est. Delivery Date'**
  String get estDeliveryDate;

  /// No description provided for @notesInclusions.
  ///
  /// In en, this message translates to:
  /// **'Notes / inclusions (e.g. Insurance, Customs)'**
  String get notesInclusions;

  /// No description provided for @financialSummary.
  ///
  /// In en, this message translates to:
  /// **'FINANCIAL SUMMARY'**
  String get financialSummary;

  /// No description provided for @totalCustomerPays.
  ///
  /// In en, this message translates to:
  /// **'Total Customer Pays'**
  String get totalCustomerPays;

  /// No description provided for @platformFee.
  ///
  /// In en, this message translates to:
  /// **'Platform Management Fee'**
  String get platformFee;

  /// No description provided for @yourNetEarnings.
  ///
  /// In en, this message translates to:
  /// **'YOUR NET EARNINGS'**
  String get yourNetEarnings;

  /// No description provided for @insuranceCalcSeparately.
  ///
  /// In en, this message translates to:
  /// **'Insurance is calculated separately based on shipment value and type.'**
  String get insuranceCalcSeparately;

  /// No description provided for @updateQuote.
  ///
  /// In en, this message translates to:
  /// **'Update Quote'**
  String get updateQuote;

  /// No description provided for @pleaseSelectDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'Please select delivery date'**
  String get pleaseSelectDeliveryDate;

  /// No description provided for @quoteUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Quote updated successfully!'**
  String get quoteUpdatedSuccessfully;

  /// No description provided for @quoteSubmittedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Quote submitted successfully!'**
  String get quoteSubmittedSuccessfully;

  /// No description provided for @lbsLabel.
  ///
  /// In en, this message translates to:
  /// **'lbs'**
  String get lbsLabel;

  /// No description provided for @kgLabel.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kgLabel;

  /// No description provided for @inLabel.
  ///
  /// In en, this message translates to:
  /// **'in'**
  String get inLabel;

  /// No description provided for @cmLabel.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get cmLabel;

  /// No description provided for @weightConversionHelper.
  ///
  /// In en, this message translates to:
  /// **'1 kg ≈ 2.2 lbs'**
  String get weightConversionHelper;

  /// No description provided for @statusRequested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get statusRequested;

  /// No description provided for @statusPendingAgents.
  ///
  /// In en, this message translates to:
  /// **'Open for Bids'**
  String get statusPendingAgents;

  /// No description provided for @statusBiddingActive.
  ///
  /// In en, this message translates to:
  /// **'Bidding Active'**
  String get statusBiddingActive;

  /// No description provided for @statusQuoted.
  ///
  /// In en, this message translates to:
  /// **'Quoted'**
  String get statusQuoted;

  /// No description provided for @statusAccepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get statusAccepted;

  /// No description provided for @statusBooked.
  ///
  /// In en, this message translates to:
  /// **'Booked'**
  String get statusBooked;

  /// No description provided for @statusInTransit.
  ///
  /// In en, this message translates to:
  /// **'In Transit'**
  String get statusInTransit;

  /// No description provided for @statusArrivedAtPort.
  ///
  /// In en, this message translates to:
  /// **'Arrived at Port'**
  String get statusArrivedAtPort;

  /// No description provided for @statusOutForDelivery.
  ///
  /// In en, this message translates to:
  /// **'Out for Delivery'**
  String get statusOutForDelivery;

  /// No description provided for @statusDelivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get statusDelivered;

  /// No description provided for @maximumQuotesReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum Quotes Reached'**
  String get maximumQuotesReached;

  /// No description provided for @quotesCount.
  ///
  /// In en, this message translates to:
  /// **'Quotes: {count}/3'**
  String quotesCount(Object count);

  /// No description provided for @statusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get statusCancelled;

  /// No description provided for @insuranceRequested.
  ///
  /// In en, this message translates to:
  /// **'Insurance Requested'**
  String get insuranceRequested;

  /// No description provided for @fixedLabel.
  ///
  /// In en, this message translates to:
  /// **'Fixed'**
  String get fixedLabel;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @transactionId.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transactionId;

  /// No description provided for @escrowHold.
  ///
  /// In en, this message translates to:
  /// **'Escrow Hold'**
  String get escrowHold;

  /// No description provided for @escrowRelease.
  ///
  /// In en, this message translates to:
  /// **'Escrow Release'**
  String get escrowRelease;

  /// No description provided for @viewTransaction.
  ///
  /// In en, this message translates to:
  /// **'View Transaction'**
  String get viewTransaction;

  /// No description provided for @payout.
  ///
  /// In en, this message translates to:
  /// **'Payout'**
  String get payout;

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// No description provided for @quoteLegalConsent.
  ///
  /// In en, this message translates to:
  /// **'I confirm that, to the best of my knowledge and based on the provided details, I am not agreeing to transport any illegal items, contraband, or prohibited goods according to the Terms of Use and Privacy Policy.'**
  String get quoteLegalConsent;

  /// No description provided for @shipmentLegalConsent.
  ///
  /// In en, this message translates to:
  /// **'I hereby declare and confirm that this shipment does not contain any illegal items, contraband, hazardous materials, or goods prohibited by law. By checking this, you agree to the Terms of Use and Privacy Policy.'**
  String get shipmentLegalConsent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fr', 'ht', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ht':
      return AppLocalizationsHt();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
