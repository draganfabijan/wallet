// TODO refactor this huge duplication
// TODO don't allow that recipient and sender are same object

$( document ).on('turbolinks:load', function() {

  $("#radioBtnSelectSender label").click(function() {
    var radioBtnDataAttr = $(this).find('input').val();

    if(radioBtnDataAttr.length > 0 && radioBtnDataAttr == 'User') {
      EnableUser();
    } else if(radioBtnDataAttr == 'Team')  {
      EnableTeam();
    } else {
      EnableStock();
    }
  });
  $("#radioBtnSelectRecipient label").click(function() {
    var radioBtnDataAttr = $(this).find('input').val();

    if(radioBtnDataAttr.length > 0 && radioBtnDataAttr == 'User') {
      EnableRecipientUser();
    } else if(radioBtnDataAttr == 'Team')  {
      EnableRecipientTeam();
    } else {
      EnableRecipientStock();
    }
  });
});

function EnableUser () {
  $('.teamDropDown').css('display', 'none');
  $('.teamDropDown select').attr('disabled', true);
  $('.stockDropDown').css('display', 'none');
  $('.stockDropDown select').attr('disabled', true);
  $('.userDropDown').css('display', 'block');
  $('.userDropDown select').attr('disabled', false);
};

function EnableTeam () {
  $('.userDropDown').css('display', 'none');
  $('.userDropDown select').attr('disabled', true);
  $('.teamDropDown').css('display', 'block');
  $('.teamDropDown select').attr('disabled', false);
  $('.stockDropDown').css('display', 'none');
  $('.stockDropDown select').attr('disabled', true);
};

function EnableStock () {
  $('.teamDropDown').css('display', 'none');
  $('.teamDropDown select').attr('disabled', true);
  $('.userDropDown').css('display', 'none');
  $('.userDropDown select').attr('disabled', true);
  $('.stockDropDown').css('display', 'block');
  $('.stockDropDown select').attr('disabled', false);
};

function EnableRecipientUser () {
  $('.teamRecipientDropDown').css('display', 'none');
  $('.teamRecipientDropDown select').attr('disabled', true);
  $('.stockRecipientDropDown').css('display', 'none');
  $('.stockRecipientDropDown select').attr('disabled', true);
  $('.userRecipientDropDown').css('display', 'block');
  $('.userRecipientDropDown select').attr('disabled', false);
};

function EnableRecipientTeam () {
  $('.userRecipientDropDown').css('display', 'none');
  $('.userRecipientDropDown select').attr('disabled', true);
  $('.teamRecipientDropDown').css('display', 'block');
  $('.teamRecipientDropDown select').attr('disabled', false);
  $('.stockRecipientDropDown').css('display', 'none');
  $('.stockRecipientDropDown select').attr('disabled', true);
};

function EnableRecipientStock () {
  $('.teamRecipientDropDown').css('display', 'none');
  $('.teamRecipientDropDown select').attr('disabled', true);
  $('.userRecipientDropDown').css('display', 'none');
  $('.userRecipientDropDown select').attr('disabled', true);
  $('.stockRecipientDropDown').css('display', 'block');
  $('.stockRecipientDropDown select').attr('disabled', false);
};
