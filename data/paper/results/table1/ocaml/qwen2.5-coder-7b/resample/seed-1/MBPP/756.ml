(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
let rec text_match_zero_one (text : string) : bool = 
  let rec check (text : string) (count : int) : bool = 
    match text, count with
    | _, 0 -> false
    | "b", _ -> true
    | "a", 1 -> check (String.drop text 1) 0
    | "a", _ -> check (String.drop text 1) (count - 1)
    | _, _ -> false
  in
  check text 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Unbound value "String.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool = 
  let rec check (text : string) (count : int) : bool = 
    match text, count with
    | _, 0 -> false
    | "b", _ -> true
    | "a", 1 -> check (text.[0]::t) 0
    | "a", _ -> check (text.[0]::t) (count - 1)
    | _, _ -> false
  and t = List.tl (String.to_list text) in
  check text 1

