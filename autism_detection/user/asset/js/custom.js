// next prev
var divs = $('.show-section section');
var now = 0; // currently shown div
divs.hide().first().show(); // hide all divs except first

//show active step
function showActiveStep()
{
    if ($('#step1').is(':visible'))
    {
        $(".step-count-bar").eq(0).addClass("active");
    }
    else if ($('#step2').is(':visible'))
    {
        $(".step-count-bar").removeClass("active");
        $(".step-count-bar").eq(1).addClass("active");
    }
    else if ($('#step3').is(':visible'))
    {
        $(".step-count-bar").removeClass("active");
        $(".step-count-bar").eq(2).addClass("active");
    }
    else if ($('#step4').is(':visible'))
    {
        $(".step-count-bar").removeClass("active");
        $(".step-count-bar").eq(3).addClass("active");
    }
    else if ($('#step5').is(':visible'))
    {
        $(".step-count-bar").removeClass("active");
        $(".step-count-bar").eq(4).addClass("active");
    }
    else
    {

    }
}


$(".radio-btn input").on('click', function()
{
    $(".radio-btn").removeClass("active");
    $(this).parent().addClass("active");
})

// timer
var count = 60;

var interval = setInterval(function() 
{
  
  if(count == 0)
  {
    clearInterval(interval);
  }
  else 
  {
    count = count -1;
  }
  document.getElementById("countdown-timer").innerHTML = count;
},1000);



function next()
{
    divs.eq(now).hide();
    now = (now + 1 < divs.length) ? now + 1 : 0;
    divs.eq(now).show(); // show next
    console.log(now);

    showActiveStep();
}
$(".prev").on('click', function()
{

    $('.radio-btn').addClass('bounce-left');
    $('.radio-btn').removeClass('bounce-right');
    divs.eq(now).hide();
    now = (now > 0) ? now - 1 : divs.length - 1;
    divs.eq(now).show(); // show previous
    console.log(now);

    showActiveStep();

})


// quiz validation
var checkedradio = false;

function radiovalidate(stepnumber)
{
    var checkradio = $("#step"+stepnumber+" input").map(function()
    {
    if($(this).is(':checked'))
    {
        return true;
    }
    else
    {
        return false;
    }
    }).get();

    checkedradio = checkradio.some(Boolean);
}




// form validation
$(document).ready(function()
{

    // check step1
    $("#step1btn").on('click', function()
    {
        radiovalidate(1);

        if(checkedradio == false)
        {
            
        (function (el) {
            setTimeout(function () {
                el.children().remove('.reveal');
            }, 3000);
            }($('#error').append('<div class="reveal alert alert-danger">Choose an option!</div>')));
            
            radiovalidate(1);

        }
        
        else
        {
            $('#step1 .radio-btn').removeClass('bounce-left');
            $('#step1 .radio-btn').addClass('bounce-right');
            setTimeout(function()
            {
                next();
            }, 900)

        }


    })

    // check step2
    $("#step2btn").on('click', function()
    {
        radiovalidate(2);

        if(checkedradio == false)
        {
            
        (function (el) {
            setTimeout(function () {
                el.children().remove('.reveal');
            }, 3000);
            }($('#error').append('<div class="reveal alert alert-danger">Choose an option!</div>')));
            
            radiovalidate(2);

        }

        else
        {
            $('#step2 .radio-btn').removeClass('bounce-left');
            $('#step2 .radio-btn').addClass('bounce-right');
            setTimeout(function()
            {
                next();
            }, 900)

        }
    })

    // check step3
    $("#step3btn").on('click', function()
    {
        radiovalidate(3);

        if(checkedradio == false)
        {
            
        (function (el) {
            setTimeout(function () {
                el.children().remove('.reveal');
            }, 3000);
            }($('#error').append('<div class="reveal alert alert-danger">Choose an option!</div>')));
            
            radiovalidate(3);

        }

        else
        {
            $('#step3 .radio-btn').removeClass('bounce-left');
            $('#step3 .radio-btn').addClass('bounce-right');
            setTimeout(function()
            {
                next();
            }, 900)

        }
    })

    // check step4
    $("#step4btn").on('click', function()
    {
        radiovalidate(4);

        if(checkedradio == false)
        {
            
        (function (el) {
            setTimeout(function () {
                el.children().remove('.reveal');
            }, 3000);
            }($('#error').append('<div class="reveal alert alert-danger">Choose an option!</div>')));
            
            radiovalidate(4);

        }

        else
        {
            $('#step4 .radio-btn').removeClass('bounce-left');
            $('#step4 .radio-btn').addClass('bounce-right');
            setTimeout(function()
            {
                next();
            }, 900)

        }
    })

    // check last step
    $("#sub").on('click', function()
    {
        radiovalidate(5);

        if(checkedradio == false)
        {
            
        (function (el) {
            setTimeout(function () {
                el.children().remove('.reveal');
            }, 3000);
            }($('#error').append('<div class="reveal alert alert-danger">Choose an option!</div>')));
            
            radiovalidate(5);

        }

        else
        {
            showresult();
            $("#sub").html('done');

        }
    })
})