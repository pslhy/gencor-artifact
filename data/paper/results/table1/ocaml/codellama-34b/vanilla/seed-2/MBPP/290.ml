let rec max_length (list1 : int list list) :  int * int list =
    match list1 with
    | [] -> (0, [])
    | head :: tail ->
      if List.length head > (fst (max_length tail)) then (List.length head, head)
      else max_length tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
