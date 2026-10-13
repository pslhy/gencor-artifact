(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
let rec max_length_list (input_list : int list list) :  int * int list =
  match input_list with
  | [] -> (0, [])
  | hd :: tl ->
      let (n, lst) = max_length_list tl in
      if List.length hd > n then
        (List.length hd, hd)
      else
        (n, lst)

