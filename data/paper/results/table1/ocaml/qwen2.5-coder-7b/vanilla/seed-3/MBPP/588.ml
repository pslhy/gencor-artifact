let rec big_diff (nums : int list) : int = 
  let rec helper min max = function
    | [] -> max - min
    | x::xs -> 
        if x < min then helper x max xs
        else if x > max then helper min x xs
        else helper min max xs
  in
  match nums with
    | [] -> invalid_arg "empty list"
    | x::xs -> helper x x xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
