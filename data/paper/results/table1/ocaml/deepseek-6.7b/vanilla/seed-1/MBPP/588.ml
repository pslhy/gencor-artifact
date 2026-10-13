let rec big_diff (nums : int list) : int =
  match nums with
  | [] -> 0
  | hd :: tl ->
      let (min, max) = List.fold_left 
        (fun (cur_min, cur_max) num -> 
           ( min cur_min num 
           , max cur_max num )) 
        (hd, hd) 
        tl 
      in max - min


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
