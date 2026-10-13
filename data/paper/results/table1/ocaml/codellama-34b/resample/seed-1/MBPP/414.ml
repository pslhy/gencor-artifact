(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether any value in a sequence exists in a sequence or not. *)
let rec overlapping (list1 : int list) (list2 : int list) : bool =
    match list1 with
    | [] -> false
    | x :: xs -> List.mem q list2 || overlapping xs list2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:27: Unbound value "q" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec overlapping (list1 : int list) (list2 : int list) : bool =
    match list1 with
    | [] -> false
    | x :: xs -> List.mem x list2 || overlapping xs list2

