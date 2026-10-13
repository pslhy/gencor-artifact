let rec smallest_num (xs : int list) : int =
  match xs with
  | [] -> failwith "Smallest number could not be found in an empty list"
  | [x] -> x
  | _ :: tail ->
    let smaller_num = smallest_num (tail) in
    if smaller_num < x then smaller_num else x
in
smallest_num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find smallest number in a list. *)
