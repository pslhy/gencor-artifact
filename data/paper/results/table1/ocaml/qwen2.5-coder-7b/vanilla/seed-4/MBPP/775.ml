let rec odd_position (nums : int list) : bool = 
  let rec helper index nums = 
    match nums with 
    | [] -> true
    | x::xs -> 
      if index mod 2 <> 0 && x mod 2 = 0 then false
      else helper (index + 1) xs
  in helper 0 nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
