submitbtn = document.getElementById("submitbtn")
agree = document.getElementById("agree")
disagree = document.getElementById("disagree")

submitbtn.addEventListener('click', submitInfo);
agree.addEventListener('click', checkAgree);
disagree.addEventListener('click', checkDisagree)

checkAgree = () => {
    if (!(agree.checked)){
        agree.checked = true
    }
}

checkDisagree = () => {
    if (!(disagree.checked)){
        disagree.checked = true
    }
}

submitInfo = () => {
    let consent = ""
    if(disagree.checked){
        consent = disagree.value
    }
    else{
        if(agree.checked){
            consent = disagree.value
        }
        else{
            return 0
        }
    }

    let data = {
        consent: consent
    } 
    
    fetch('/demographics/up_demographicdetails',{
        method:"POST",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify(data)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    fetch('/signin',{
        method:"GET",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify({})
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    submitbtn.removeEventListener(click, submitInfo);
    agree.removeEventListener(click, checkAgree);
    disagree.removeEventListener(click, checkDisagree);

}

