function twoFer(name) {
  if (name === '' || name == null) {
    return 'One for you, one for me.'
  } else {
    return `One for ${name}, one for me.`
  }
}

export { twoFer };
