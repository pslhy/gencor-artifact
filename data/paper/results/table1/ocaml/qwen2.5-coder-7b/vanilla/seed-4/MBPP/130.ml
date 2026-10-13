let rec max_occurrences (nums : int list) : int = 
  let rec helper acc nums = 
    match nums with 
    | [] -> acc
    | x::xs -> 
      if snd acc >= List.length nums then acc
      else if x = fst acc then helper (x, snd acc + 1) xs
      else helper (x, 1) xs
  in
  snd (helper (nums.(0), 0) nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
