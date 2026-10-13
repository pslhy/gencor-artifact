(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
let rec next_Perfect_Square (n : int) : int =
  if n = 1 then
    1
  else if n mod Perfect_Square (n / 2) <> 0 then
    next_Perfect_Square (n / 2)
  else
    Perfect_Square (n / 2) + 1

and Perfect_Square (n : int) : int =
  let rec sqrt (n : int) : int =
    if n <= 1 then
      1
    else
      sqrt (n / 2) * 2
  in
  sqrt (n)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
  if n = 1 then
    1
  else if n mod Perfect_Square (n / 2) = 0 then
    next_Perfect_Square (n / 2)
  else
    Perfect_Square (n / 2) + 1

and Perfect_Square (n : int) : int =
  let rec sqrt (n : int) : int =
    if n <= 1 then
      1
    else
      sqrt (n / 2) * 2
  in
  sqrt (n)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
  if n = 1 then
    1
  else
    let next_Perfect_Square (n : int) : int =
      if n mod Perfect_Square (n / 2) = 0 then
        next_Perfect_Square (n / 2)
      else
        Perfect_Square (n / 2) + 1
    in
    next_Perfect_Square n

and Perfect_Square (n : int) : int =
  let rec sqrt (n : int) : int =
    if n <= 1 then
      1
    else
      sqrt (n / 2) * 2
  in
  sqrt (n)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
  if n = 1 then
    1
  else if n mod Perfect_Square (n / 2) = 0 then
    next_Perfect_Square (n / 2)
  else
    Perfect_Square (n / 2) + 1

and Perfect_Square (n : int) : int =
  let rec sqrt (n : int) : int =
    if n <= 1 then
      1
    else
      sqrt (n / 2) * 2
  in
  sqrt (n)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
  if n = 1 then
    1
  else if n mod Perfect_Square (n / 2) = 0 then
    next_Perfect_Square (n / 2)
  else
    Perfect_Square (n / 2) + 1

and Perfect_Square (n : int) : int =
  let rec sqrt (n : int) : int =
    if n <= 1 then
      1
    else
      sqrt (n / 2) * 2
  in
  sqrt (n)

