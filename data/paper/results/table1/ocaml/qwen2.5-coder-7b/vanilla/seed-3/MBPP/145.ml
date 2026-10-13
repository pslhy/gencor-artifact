let rec max_Abs_Diff (arr : int list) : int = 
  let rec helper min_val max_val = function
    | [] -> abs (max_val - min_val)
    | x::xs -> 
      let new_min_val = min min_val x in
      let new_max_val = max max_val x in
      helper new_min_val new_max_val xs
  in
  match arr with
    | [] | [_] -> invalid_arg "Array must contain at least two elements"
    | _ -> helper max_int min_int arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
