let rec swap_List (newList : int list) : int list = 
    match newList with 
    | [] -> []
    | h :: t -> swap_help h t h

and swap_help (h : int) (t : int list) (prevH : int) : int list =
    match t with
    | [] -> [ prevH; h ]
    | x :: xs -> x :: swap_help h xs prevH


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
