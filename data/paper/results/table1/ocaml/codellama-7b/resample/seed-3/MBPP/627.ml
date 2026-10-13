(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
let rec find_First_Missing (array : int list) : int =
  match array with
  | [] -> 1
  | h :: t ->
    if h = List.length t + 1 then
      List.length t + 2
    else
      find_First_Missing (List.drop_while (fun x -> x <= h + 1) t)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:27: Unbound value "List.drop_while" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_First_Missing (array : int list) : int =
  match array with
  | [] -> 1
  | h :: t ->
    if h = List.length t + 1 then
      List.length t + 2
    else
      find_First_Missing (List.tl t)

