let profilePic = document.getElementByID("profile-pic");
let inputFile = document.getElementByID("input-file");

inputFile.onchange = function()
{
  profilePic.src = URL.createObjectURL(inputFile.files[0]);
}