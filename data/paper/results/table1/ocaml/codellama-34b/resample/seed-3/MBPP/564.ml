(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    1
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)

let count_unequal_pairs (arr : int list) : int =
  let len = List.length arr
  let rec loop (i : int) =
    if i >= len then
      0
    else
      (count_Pairs arr i) + loop (i + 1)
  in loop 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    1
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)

let count_unequal_pairs (arr : int list) : int =
  let len = List.length arr
  let rec loop (i : int) : int =
    if i = len then
      0
    else
      (count_Pairs arr i) + loop (i + 1)
  in loop 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    1
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)

let count_unequal_pairs (arr : int list) : int =
  let len = List.length arr
  let rec loop (i : int) : int =
    if i = len then
      0
    else
      (count_Pairs arr i) + loop (i + 1)
  in loop 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    1
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)

let count_unequal_pairs (arr : int list) : int =
  let len = List.length arr in
  let rec loop (i : int) : int =
    if i = len then
      0
    else
      (count_Pairs arr i) + loop (i + 1)
  in
  loop 1

