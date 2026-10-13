(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then true
  else
    let (a', b') = (abs a, abs b) in
    let x = lnot (a' - b') in
    let count = char_count x in
    count < 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "char_count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then true
  else
    let (a', b') = (abs a, abs b) in
    let x = lnot (a' - b') in
    let count = String.length (String.filter (fun c -> c <> '0') (Int.to_string x)) in
    count < 2

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:32: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then true
  else
    let (a', b') = (abs a, abs b) in
    let x = lnot (a' - b') in
    let count = String.length(String.iter (fun c -> if c <> '0' then 1 else 0) (Int.to_string x)) in
    count < 2

