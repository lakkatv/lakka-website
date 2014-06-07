form = document.getElementById 'contact'

sendMail = ->
  data = JSON.stringify {
    name:    this.name.value
    email:   this.email.value
    subject: this.subject.value
    message: this.message.value
  }

  for element in this.elements
    element.disabled = true

  req = new XMLHttpRequest

  req.timeout = 10000

  req.addEventListener 'timeout', ->
    console.log 'Querry timeout'

  req.addEventListener 'readystatechange', ->
    if this.readyState == 4                        # ReadyState Compelte
       
      if this.status == 202
        data = eval '(' + this.responseText + ')'
        console.log 'data message: ', data
      else
        console.log 'Message wasn\'t sent'

  req.addEventListener 'error', ->
    console.log 'Something went wrong !'
  
  req.open this.method.toUpperCase(), this.action, true
  req.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
  req.send(data)
  return false

form.onsubmit = sendMail
