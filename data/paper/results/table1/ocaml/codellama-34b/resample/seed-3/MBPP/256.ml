(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    while !flag <= truncate(sqrt(float(n))) do
      if n mod !flag = 0 then
        prime <- false
      flag <- !flag + 1
    done;
    if prime then
      2
    else
      1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:0:0: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    while !flag <= truncate(sqrt(float(n))) do
      if n mod !flag = 0 then
        prime <- false
      flag <- !flag + 1
    done;
    if prime then
      2
    else
      1;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:0:0: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    let rec loop flag prime n =
      if !flag <= truncate(sqrt(float(n))) then
        if n mod !flag = 0 then
          prime <- false
        flag <- !flag + 1
        loop flag prime n
      else if prime then
        2
      else
        1
    in
    loop flag prime n;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    let rec loop flag prime n =
      if !flag <= truncate(sqrt(float(n))) then
        if n mod !flag = 0 then
          prime <- false
        flag <- !flag + 1
        loop flag prime n
      else if prime then
        2
      else
        1
    in
    loop flag prime n;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    let rec loop (flag : int) (prime : bool) (n : int) : int =
      if flag <= truncate(sqrt(float(n))) then
        if n mod flag = 0 then
          prime <- false
        flag <- flag + 1
        loop flag prime n
      else if prime then
        2
      else
        1
    in
    loop flag prime n;;

