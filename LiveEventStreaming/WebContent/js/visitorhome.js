/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function()
{
    loginpopup();
    signuppopup();
    login1popup();

});
function loginpopup()
{
    $("#login").fancybox({
        'width': '80%',
        'height': '100%',
        'autoScale': true,
        'transitionIn': 'none',
        'transitionOut': 'none',
        'type': 'iframe',
        'onClosed': function()
        {
        }
    });
}
function signuppopup()
{
    $("#signup").fancybox({
        'width': '60%',
        'height': '100%',
        'autoScale': true,
        'transitionIn': 'none',
        'transitionOut': 'none',
        'type': 'iframe',
        'onClosed': function()
        {
        }
    });
}
function login1popup()
{
    $("#login1").fancybox({
        'width': '60%',
        'height': '95%',
        'autoScale': true,
        'transitionIn': 'none',
        'transitionOut': 'none',
        'type': 'iframe',
        'onClosed': function()
        {
        }
    });
}
function setFocus(){
    $("#divtutorial").show();

}
