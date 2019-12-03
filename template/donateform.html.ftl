

<div id="donateBody">

<img class="headerImg" src="https://gurunanakdwara.com/img/donate1200x220.jpg"/>

<div class="formContainer">
<form action="/moqui-org/donateform/createPerson" method="post" id="donateForm">
  <fieldset>
  <legend>Donation Amount</legend>
  <img class="secure-img" src="https://gurunanakdwara.com/img/100-secure.png"/>
<div class="radios">
<!--  TODO: figure out how to add in dollar signs, maybe with ::before or ::after, or remove it from the value in the services  -->
       <input class="amount-radios active-amount" value="31" name="amount" READONLY>
        <input class="amount-radios" value="51" READONLY>
        <input class="amount-radios" value="101" READONLY>
        <input class="amount-radios" value="251" READONLY>
        <input class="amount-radios" value="501" READONLY>
        <input class="amount-radios other-amount" type="text" placeholder="Other amount" pattern="^[0-9]+(\.[0-9][0-9])?$" title="Please enter a dollar amount, decimals optional"/>
      </div>
    </fieldset>
    <fieldset>
      <legend>Frequency</legend>
      <div class="frequency">

        <input id="oneTime" class="active-amount frequency-option" type="text" id="one-time" value="One time" READONLY/>

        <input id="monthly" class="frequency-option" type="text" id="monthly" value="monthly" READONLY/>

      </div>
    </fieldset>

    <fieldset>
    <legend>Contact Information</legend>
    <div class="contact">
      <!--  Person info  -->
      <div class="field-75">
          <label for="firstName">First Name*</label>
          <input required type="text" id="firstName" name="firstName"/>
      </div>

      <div class="field-25">
          <label for="middleName">M.I.</label>
          <input type="text" id="middleName" name="middleName">
      </div>

      <div>
          <label for="lastName">Last Name*</label>
          <input required type="text" id="lastName" name="lastName"> 
      </div>

      <div>
          <label for="emailAddress">Email*</label>
          <input required type="email" id="emailAddress" name="emailAddress" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="example@email.com">
      </div>

      <div>
          <label for="contactNumber">Phone Number*</label>
          <input required type="tel" id="contactNumber" name="contactNumber" pattern="^[2-9]\d{2}-\d{3}-\d{4}$" title="123-345-67890">
      </div>

      <div class="field-75">
          <label for="address1">Residential Address*</label>
          <input required type="text" id="address1" name="address1">
      </div>

      <div class="field-25">
          <label for="unitNumber">Apt #</label>
          <input type="text" id="unitNumber" name="unitNumber">
      </div>

      <div class="field-25">
          <label for="postalCode">Zip Code*</label>
          <input required type="text" id="postalCode" name="postalCode" pattern="^[0-9]{5}(?:-[0-9]{4})?$" title="12345 or 12345-1234">
      </div>

      <div class="field-50">
          <label for="city">City*</label>
          <input required type="text" id="city" name="city">
      </div>
      <div class="field-25">
      <label for="stateProvinceGeoId">State*</label>
        <select required id="stateProvinceGeoId"  name="stateProvinceGeoId">
          <option class="blank label"></option>
          <option value="USA_AL" class="state">Alabama</option>
          <option value="USA_AK" class="state">Alaska</option>
          <option value="USA_AZ" class="state">Arizona</option>
          <option value="USA_AR" class="state">Arkansas</option>
          <option value="USA_CA" class="state">California</option>
          <option value="USA_CO" class="state">Colorado</option>
          <option value="USA_CT" class="state">Connecticut</option>
          <option value="USA_DE" class="state">Delaware</option>
          <option value="USA_DC" class="state">District Of Columbia</option>
          <option value="USA_FL" class="state">Florida</option>
          <option value="USA_GA" class="state">Georgia</option>
          <option value="USA_HI" class="state">Hawaii</option>
          <option value="USA_ID" class="state">Idaho</option>
          <option value="USA_IL" class="state">Illinois</option>
          <option value="USA_IN" class="state">Indiana</option>
          <option value="USA_IA" class="state">Iowa</option>
          <option value="USA_KS" class="state">Kansas</option>
          <option value="USA_KY" class="state">Kentucky</option>
          <option value="USA_LA" class="state">Louisiana</option>
          <option value="USA_ME" class="state">Maine</option>
          <option value="USA_MD" class="state">Maryland</option>
          <option value="USA_MA" class="state">Massachusetts</option>
          <option value="USA_MI" class="state">Michigan</option>
          <option value="USA_MN" class="state">Minnesota</option>
          <option value="USA_MS" class="state">Mississippi</option>
          <option value="USA_MO" class="state">Missouri</option>
          <option value="USA_MT" class="state">Montana</option>
          <option value="USA_NE" class="state">Nebraska</option>
          <option value="USA_NV" class="state">Nevada</option>
          <option value="USA_NH" class="state">New Hampshire</option>
          <option value="USA_NJ" class="state">New Jersey</option>
          <option value="USA_NM" class="state">New Mexico</option>
          <option value="USA_NY" class="state">New York</option>
          <option value="USA_NC" class="state">North Carolina</option>
          <option value="USA_ND" class="state">North Dakota</option>
          <option value="USA_OH" class="state">Ohio</option>
          <option value="USA_OK" class="state">Oklahoma</option>
          <option value="USA_OR" class="state">Oregon</option>
          <option value="USA_PA" class="state">Pennsylvania</option>
          <option value="USA_RI" class="state">Rhode Island</option>
          <option value="USA_SC" class="state">South Carolina</option>
          <option value="USA_SD" class="state">South Dakota</option>
          <option value="USA_TN" class="state">Tennessee</option>
          <option value="USA_TX" class="state">Texas</option>
          <option value="USA_UT" class="state">Utah</option>
          <option value="USA_VT" class="state">Vermont</option>
          <option value="USA_VA" class="state">Virginia</option>
          <option value="USA_WA" class="state">Washington</option>
          <option value="USA_WV" class="state">West Virginia</option>
          <option value="USA_WI" class="state">Wisconsin</option>
          <option value="USA_WY" class="state">Wyoming</option>
          <option value="USA_AS" class="state">American Samoa</option>
          <option value="USA_GU" class="state">Guam</option>
          <option value="USA_MP" class="state">Northern Mariana Islands</option>
          <option value="USA_PR" class="state">Puerto Rico</option>
          <option value="USA_UM" class="state">United States Minor Outlying Islands</option>
          <option value="USA_VI" class="state">Virgin Islands</option>
          <option value="USA_AA" class="state">Armed Forces Americas</option>
          <option value="USA_AP" class="state">Armed Forces Pacific</option>
          <option value="USA_AE" class="state">Armed Forces Others</option>
        </select>  
        </div>
    </div>
    </fieldset>
  <fieldset>
  <legend>Card Information</legend>
  <div class="card">
      <div>
          <label for="cardNumber">Card Number*</label>
          <input required type="text" id="cardNumber" name="cardNumber" pattern="4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|6(?:011|5[0-9]{2})[0-9]{12}|(?:2131|1800|35\d{3})\d{11}" title="16 digit card number, no separators"/>
     </div>
     <div class="field-33">
      <label for="expireMonth">Expire Month*</label>
      <input required type="text" id="expireMonth" name="expireMonth" pattern="^(0[1-9]|1[012])$" title="Two digit month" placeholder="Example: 04"/>
    </div>
    <div class="field-33">
      <label for="expireYear">Expire Year*</label>
      <input required type="text" id="expireYear" name="expireYear" pattern="^[0-9]{4}$" title="Four digit year" placeholder="Example: 2020"/>
    </div>
    <div class="field-33">
      <label for="cardSecurityCode">Security Code*</label>
      <input required type="text" id="cardSecurityCode" name="cardSecurityCode" pattern="^[0-9]{3}$" title="Three digit code" placeholder="Example: 123"/>
    </div>
    </div>
  <button type="submit">Submit donation</button>
  
  </fieldset>
  </form> 
</div>

<footer class="footerSecondary">
    <p>Guru Nanak Dwara is a tax-exempt 501c(3) non-profit charitable organization. Every generous donation is tax deductible in the USA.</p>
</footer>

<script> 
    $( document ).ready(function() {

        var radio_amounts = $('.amount-radios');
        var active_amount = $("[name='amount']");

        var oneTime = $('#one-time');
        var monthly = $('#monthly');


        $(".amount-radios").click(function(){
            console.log('Clicked! radio');
            active_amount.removeAttr("name").removeClass("active-amount");
            $(this).attr("name","amount").addClass("active-amount");
            active_amount = $(this);
        })

        oneTime.click(function(){
          console.log('Clicked! one time');
          $(this).addClass("active-amount");
          monthly.removeClass("active-amount").removeAttr("name");
        })

        monthly.click(function(){
          console.log('Clicked! monthly');
          $(this).addClass("active-amount").attr("name","frequency");
          oneTime.removeClass("active-amount");
        })

        })
</script>

</div>



