(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
let rec is_undulating (n : int) : bool =
  match n with
  | 0 -> false
  | _ ->
    let s = String.of_int n in
    let rec loop i =
      if i >= String.length s - 2 then
        true
      else if String.get s i = String.get s (i + 1) && String.get s (i + 1) = String.get s (i + 2) then
        false
      else
        loop (i + 1)
    in loop 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:13: Unbound value "String.of_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_undulating (n : int) : bool =
  match n with
  | 0 -> false
  | _ ->
    let s = string_of_int n in
    let rec loop i =
      if i >= String.length s - 2 then
        true
      else if String.get s i = String.get s (i + 1) && String.get s (i + 1) = String.get s (i + 2) then
        false
      else
        loop (i + 1)
    in loop 0

