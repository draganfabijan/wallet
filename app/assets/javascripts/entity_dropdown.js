$( document ).on('turbolinks:load', function() {

  $("#radioBtnSelectSender label").click(function() {
    var radioBtnDataAttr = $(this).find('input').val();
    var sender = "Sender"
    dropdownSwitcher(sender, radioBtnDataAttr)
  });
  $("#radioBtnSelectRecipient label").click(function(e) {
    var radioBtnDataAttr = $(this).find('input').val();
    var recipient = 'Recipient'
    dropdownSwitcher(recipient, radioBtnDataAttr)
  });
});

function dropdownSwitcher(target, entity) {
  if(entity.length > 0 && entity == 'User') {
    enableUser(target);
  } else if(entity == 'Team')  {
    enableTeam(target);
  } else {
    enableStock(target);
  }
}

function enableUser (target) {
  $(`.team${target}DropDown`).css('display', 'none');
  $(`.team${target}DropDown select`).attr('disabled', true);
  $(`.stock${target}DropDown`).css('display', 'none');
  $(`.stock${target}DropDown select`).attr('disabled', true);
  $(`.user${target}DropDown`).css('display', 'block');
  $(`.user${target}DropDown select`).attr('disabled', false);
};

function enableTeam (target) {
  $(`.user${target}DropDown`).css('display', 'none');
  $(`.user${target}DropDown select`).attr('disabled', true);
  $(`.team${target}DropDown`).css('display', 'block');
  $(`.team${target}DropDown select`).attr('disabled', false);
  $(`.stock${target}DropDown`).css('display', 'none');
  $(`.stock${target}DropDown select`).attr('disabled', true);
};

function enableStock (target) {
  $(`.team${target}DropDown`).css('display', 'none');
  $(`.team${target}DropDown select`).attr('disabled', true);
  $(`.user${target}DropDown`).css('display', 'none');
  $(`.user${target}DropDown select`).attr('disabled', true);
  $(`.stock${target}DropDown`).css('display', 'block');
  $(`.stock${target}DropDown select`).attr('disabled', false);
};
