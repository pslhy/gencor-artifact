(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
let rec is_undulating (n : int) : bool =
  let s = String.of_int n in
  let len = String.length s in
  if len < 3 then false
  else
    let rec check i =
      if i = len - 1 then true
      else if s.[i] = s.[i - 1] || s.[i] = s.[i + 1] then false (* If adjacent digits are the same *)
      else check (i + 1)
    in check 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "String.of_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_undulating (n : int) : bool =
  let s = string_of_int n in
  let len = String.length s in
  if len < 3 then false
  else
    let rec check i =
      if i = len - 1 then true
      else if s.[i] = s.[i - 1] || s.[i] = s.[i + 1] then false
      else check (i + 1)
    in check 1

