(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | (x::xs) ->
    let x_freq =
      (x, List.count (fun e -> e = x) (List.flatten list1))
    in
    x_freq :: frequency_lists xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:11: Unbound value "List.count" *)
(*     Hint: Did you mean "cons"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | (x::xs) ->
    let x_freq =
      (x, List.length (List.filter (fun e -> e = x) (List.flatten list1)))
    in
    x_freq :: frequency_lists xs

