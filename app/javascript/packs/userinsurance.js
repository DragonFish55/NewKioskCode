next = document.getElementById('next')
back = document.getElementById('back')

insur_no = document.getElementById('insur_no')
rxbin = document.getElementById('rxbin')
rxpcn = document.getElementById('rxpcn')
rxgroup = document.getElementById('rxgroup')
insurance = document.getElementById('insurance')
provider = document.getElementById('provider')
priority = document.getElementById('priority')



next.addEventListener('click', nextpage);
back.addEventListener('click', prevPage);

prevPage = () => {
    fetch('/userdetails',{
        method:"GET",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify({})
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    back.removeEventListener('click', prevPage);
    next.removeEventListener('click', nextpage);
}

nextPage = () => {

    let dataIn = {
        insur_no: insur_no,
        rxbin: rxbin,
        rxpcn: rxpcn,
        rxgroup: rxgroup,
        insurance: insurance,
        provider: provider,
        priority: priority
    }

    fetch('/userhealth',{
        method:"GET",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify({})
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    fetch('/insurances/up_userinsurance',{
        method:"POST",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify(dataIn)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    back.removeEventListener('click', prevPage);
    next.removeEventListener('click', nextpage);
}