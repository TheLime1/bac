function chiffer(ch) {
  i = -1;
  do {
    i++;
  } while (ch[i] <= "9" && ch[i] >= "0" && i < ch.length);
  if (i < ch.length) return false;
}
