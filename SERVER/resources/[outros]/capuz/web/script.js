window.addEventListener('message', ({data}) => {
  if (data.action === 'show') document.body.style.background = 'black'
  if (data.action === 'hide') document.body.style.background = 'transparent'
})