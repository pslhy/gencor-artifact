(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10 in
    if d >= 1 then
      validate (n / 10) && (d <= 'd')
    else
      validate (n / 10)

let is_sorted n =
  let rec loop d = function
    | [] -> true
    | d' :: ds ->
      let c = compare d d' in
      c <= 0 && loop d' ds
  in
  loop n;

let valid n = validate n && is_sorted n

let _ =
  assert (valid 1234567890);
  assert (valid 123456890);
  assert (not (valid 123456789));
  assert (not (valid 123456980));
  assert (not (valid 123456987));
  assert (not (valid 1234569876));
  assert (not (valid 2147483647));
  assert (not (valid 2147483646));
  assert (not (valid 2147483648));
  0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
  let d = n mod 10 in
  if d >= 1 && validate (n / 10) then
    d <= 'd'
  else
    validate (n / 10)

let is_sorted n =
  let rec loop d = function
    | [] -> true
    | d' :: ds ->
      let c = compare d d' in
      c <= 0 && loop d' ds
  in
  loop n;

let valid n = validate n && is_sorted n

let _ =
  assert (valid 1234567890);
  assert (valid 123456890);
  assert (not (valid 123456789));
  assert (not (valid 123456980));
  assert (not (valid 123456987));
  assert (not (valid 1234569876));
  assert (not (valid 2147483647));
  assert (not (valid 2147483646));
  assert (not (valid 2147483648));
  0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
  let d = n mod 10 in
  if d >= 1 && validate (n / 10) then
    d <= 'd'
  else
    validate (n / 10)

let is_sorted n =
  let rec loop d = function
    | [] -> true
    | d' :: ds ->
      let c = compare d d' in
      c <= 0 && loop d' ds
  in
  loop d n

let valid n = validate n && is_sorted n

let _ =
  assert (valid 1234567890);
  assert (valid 123456890);
  assert (not (valid 123456789));
  assert (not (valid 123456980));
  assert (not (valid 123456987));
  assert (not (valid 1234569876));
  assert (not (valid 2147483647));
  assert (not (valid 2147483646));
  assert (not (valid 2147483648));
  0

