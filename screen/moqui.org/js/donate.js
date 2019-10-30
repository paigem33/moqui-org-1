/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 313);
/******/ })
/************************************************************************/
/******/ ({

/***/ 313:
/***/ (function(module, exports, __webpack_require__) {

    module.exports = __webpack_require__(314);


    /***/ }),
    
    /***/ 314:
    /***/ (function(module, __webpack_exports__, __webpack_require__) {
    
    "use strict";
    Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
    /* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__components_DonateForm_stripeComponent__ = __webpack_require__(315);
    
    
    var testMode = false;
    var liveTestMode = true;
    
    var actionUrl = 'https://api.gurunanakdwara.com/live/donate';
    var stripePublicKey = 'pk_live_pC5NiC9LMCe5ZkNP78u14y2e';
    
    if (testMode) {
        if (liveTestMode) {
            stripePublicKey = 'pk_test_dxgd19V7l56XH5K1iAobPaLI';
            actionUrl = 'https://prd55h8nhj.execute-api.us-west-2.amazonaws.com/Prod/stripe-backend';
        } else {
            stripePublicKey = 'pk_test_dDgp9AHHb8DUfsjskRiEw6uB';
            actionUrl = 'https://prd55h8nhj.execute-api.us-west-2.amazonaws.com/Prod/stripe-backend';
        }
    }
    
    /* global Stripe */
    /* eslint-disable-next-line */
    var stripe = Stripe(stripePublicKey);
    Object(__WEBPACK_IMPORTED_MODULE_0__components_DonateForm_stripeComponent__["a" /* mountStripeForm */])(stripe, actionUrl);
    
    /***/ }),
    
    /***/ 315:
    /***/ (function(module, __webpack_exports__, __webpack_require__) {
    
    "use strict";
    /* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return mountStripeForm; });
    function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }
    
    function registerElements(stripe, elements, exampleName, actionUrl) {
        var formClass = '.' + exampleName;
        var example = document.querySelector(formClass);
    
        var form = example.querySelector('form');
        // var resetButton = example.querySelector('a.reset');
        var error = form.querySelector('.error');
        var errorMessage = error.querySelector('.message');
    
        function triggerBrowserValidation() {
            // The only way to trigger HTML5 form validation UI is to fake a user submit event.
            var submit = document.createElement('input');
    
            submit.type = 'submit';
            submit.style.display = 'none';
            form.appendChild(submit);
            submit.click();
            submit.remove();
        }
    
        // Listen for errors from each Element, and show error messages in the UI.
        var savedErrors = {};
    
        elements.forEach(function (element, idx) {
            element.on('change', function (event) {
                if (event.error) {
                    error.classList.add('visible');
                    savedErrors[idx] = event.error.message;
                    errorMessage.innerText = event.error.message;
                } else {
                    savedErrors[idx] = null;
    
                    // Loop over the saved errors and find the first one, if any.
                    var nextError = Object.keys(savedErrors).sort().reduce(function (maybeFoundError, key) {
                        return maybeFoundError || savedErrors[key];
                    }, null);
    
                    if (nextError) {
                        // Now that they've fixed the current error, show another one.
                        errorMessage.innerText = nextError;
                    } else {
                        // The user fixed the last error; no more errors.
                        error.classList.remove('visible');
                    }
                }
            });
        });
    
        // Listen on the form's 'submit' handler...
        form.addEventListener('submit', function () {
            var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(e) {
                var plainInputsValid, formData, ownerInfo, stripeResponse, source, tokenData, _stripeResponse;
    
                return regeneratorRuntime.wrap(function _callee$(_context) {
                    while (1) {
                        switch (_context.prev = _context.next) {
                            case 0:
                                e.preventDefault();
    
                                // Trigger HTML5 validation UI on the form if any of the inputs fail
                                // validation.
                                plainInputsValid = true;
    
    
                                Array.prototype.forEach.call(form.querySelectorAll('input'), function (input) {
                                    if (input.checkValidity && !input.checkValidity()) {
                                        plainInputsValid = false;
                                    }
                                });
    
                                if (plainInputsValid) {
                                    _context.next = 6;
                                    break;
                                }
    
                                triggerBrowserValidation();
    
                                return _context.abrupt('return');
    
                            case 6:
    
                                // Show a loading screen...
                                example.classList.add('submitting');
    
                                formData = {};
    
                                formData.firstName = this.first_name.value;
                                formData.lastName = this.last_name.value;
                                formData.name = this.first_name.value + ' ' + this.last_name.value;
                                formData.amount = this.amount.value;
                                if (!formData.amount) {
                                    formData.amount = this.amount_prefilled.value;
                                }
                                formData.emailAddress = this.email.value;
                                formData.primaryPhoneNumber = this.phone.value;
                                formData.address1 = this.address_line1.value;
                                formData.address2 = this.address_line2.value;
                                formData.zip = this.address_zip.value;
                                formData.city = this.address_city.value;
                                formData.state = this.address_state.value;
                                formData.mailingList = this.mailing_list.value;
                                formData.monthly_or_one_time = this.monthly_or_one_time.value;
                                formData = removeEmpty(formData);
    
                                // canned owner of Source
                                ownerInfo = {
                                    owner: {
                                        name: formData.firstName + ' ' + formData.lastName,
                                        address: {
                                            line1: formData.address1,
                                            line2: formData.address2,
                                            city: formData.city,
                                            state: formData.state,
                                            postal_code: formData.zip,
                                            country: 'US'
                                        },
                                        email: formData.emailAddress
                                    }
                                };
    
                                if (!(this.monthly_or_one_time.value == 'monthly')) {
                                    _context.next = 42;
                                    break;
                                }
    
                                _context.prev = 25;
                                _context.next = 28;
                                return stripe.createSource(elements[0], ownerInfo);
    
                            case 28:
                                stripeResponse = _context.sent;
                                source = stripeResponse.source;
    
                                formData.stripeSource = source;
    
                                _context.next = 33;
                                return axios.post(actionUrl, JSON.stringify(formData), {
                                    headers: {
                                        'Content-Type': 'application/json'
                                    }
                                });
    
                            case 33:
                                window.location.assign('../../donate-thankyou.html');
                                _context.next = 40;
                                break;
    
                            case 36:
                                _context.prev = 36;
                                _context.t0 = _context['catch'](25);
    
                                console.log(_context.t0.message);
                                window.alert('We\'re sorry, an error occurred. Please try again.');
    
                            case 40:
                                _context.next = 58;
                                break;
    
                            case 42:
                                _context.prev = 42;
                                tokenData = {
                                    name: this.first_name.value + ' ' + this.last_name.value,
                                    address_line1: this.address_line1.value,
                                    address_line2: this.address_line2.value,
                                    address_city: this.address_city.value,
                                    address_state: this.address_state.value,
                                    address_zip: this.address_zip.value,
                                    address_country: 'US'
                                };
    
                                tokenData = removeEmpty(tokenData);
                                _context.next = 47;
                                return stripe.createToken(elements[0], tokenData);
    
                            case 47:
                                _stripeResponse = _context.sent;
    
                                formData.token = _stripeResponse.token.id;
                                _context.next = 51;
                                return axios.post(actionUrl, JSON.stringify(formData), {
                                    headers: {
                                        'Content-Type': 'application/json'
                                    }
                                });
    
                            case 51:
                                window.location.assign('../../donate-thankyou.html');
                                _context.next = 58;
                                break;
    
                            case 54:
                                _context.prev = 54;
                                _context.t1 = _context['catch'](42);
    
                                console.log(_context.t1.message);
                                window.alert('We\'re sorry, an error occurred. Please try again.');
    
                            case 58:
                            case 'end':
                                return _context.stop();
                        }
                    }
                }, _callee, this, [[25, 36], [42, 54]]);
            }));
    
            return function (_x) {
                return _ref.apply(this, arguments);
            };
        }());
    
        var removeEmpty = function removeEmpty(data) {
            var cleanedObject = {};
            Object.keys(data).forEach(function (key) {
                if (data[key] !== '') {
                    cleanedObject[key] = data[key];
                }
            });
    
            return cleanedObject;
        };
    } /* registerElements */
    
    function mountStripe(stripe, actionUrl) {
        var elements = stripe.elements({
            fonts: [{
                cssSrc: 'https://fonts.googleapis.com/css?family=Source+Code+Pro'
            }],
            // Stripe's examples are localized to specific languages, but if
            // you wish to have Elements automatically detect your user's locale,
            // use `locale: 'auto'` instead.
            locale: window.__exampleLocale
        });
    
        // Floating labels
        var inputs = document.querySelectorAll('.floating-label');
    
        Array.prototype.forEach.call(inputs, function (input) {
            input.addEventListener('focus', function () {
                input.classList.add('focused');
            });
            input.addEventListener('blur', function () {
                input.classList.remove('focused');
            });
            input.addEventListener('keyup', function () {
                if (input.value.length === 0) {
                    input.classList.add('empty');
                } else {
                    input.classList.remove('empty');
                }
            });
        });
    
        var card = elements.create('card', { hidePostalCode: true }, {
            iconStyle: 'solid',
            style: {
                base: {
                    // iconColor: "#fff",
                    // color: "#fff",
                    fontWeight: 400,
                    fontFamily: 'Helvetica Neue, Helvetica, Arial, sans-serif',
                    fontSize: '16px',
                    fontSmoothing: 'antialiased',
    
                    '::placeholder': {
                        color: '#919191'
                    },
                    ':-webkit-autofill': {
                        color: '#919191'
                    }
                },
                invalid: {
                    iconColor: 'red',
                    color: 'red'
                }
            }
        });
    
        card.mount('#card-one-liner');
    
        registerElements(stripe, [card], 'stripe-form-wrapper', actionUrl);
    }
    
    function clearOtherAmount() {
        document.getElementById('amount').value = '';
    }
    
    function selectOtherRadioButton() {
        document.getElementById('rdo-amount-other').checked = true;
        focusOnOtherAmount();
    }
    
    function focusOnOtherAmount() {
        var otherAmount = document.getElementById('amount');
        otherAmount.focus();
        otherAmount.select();
    }
    
    /* global hyperform, $ */
    function mountStripeForm(stripe, actionUrl) {
        hyperform(window, {
            preventImplicitSubmit: true
        });
    
        hyperform.setRenderer('attachWarning', function (warning, element) {
            element.parentNode.appendChild(warning);
            element.parentNode.className += ' error-box';
        });
    
        function phoneMask() {
            var num = $(this).val().replace(/\D/g, '');
    
            $(this).val(num.substring(0, 3) + '-' + num.substring(3, 6) + '-' + num.substring(6, 10));
        }
        $('#phone').change(phoneMask);
        mountStripe(stripe, actionUrl);
    }
    
    
    
    /***/ })
    
    /******/ });
    //# sourceMappingURL=donate.js.map