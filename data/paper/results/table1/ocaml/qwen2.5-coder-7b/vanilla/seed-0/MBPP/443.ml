let rec largest_neg (list1 : int list) : int = 
  let rec helper max_neg = function
    | [] -> max_neg
    | x::xs ->
      if x < 0 && (max_neg = 0 || x > max_neg) then helper x xs
      else helper max_neg xs
  in
  helper 0 list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
