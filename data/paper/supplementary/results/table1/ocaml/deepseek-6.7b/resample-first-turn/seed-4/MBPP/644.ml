let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec rev_List l acc =
    match l with
    | [] -> acc
    | h::t -> rev_List t (h::acc)
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else rev_List (List.rev (List.rev_range 0 k input)) (List.rev (List.rev_range k (List.length input) input))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
