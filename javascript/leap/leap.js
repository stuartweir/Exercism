function isLeap(year) {
  if (year % 400 === 0 || (year !== 100 && year % 4 === 0)) return true;
  return false;
}

export default isLeap;
