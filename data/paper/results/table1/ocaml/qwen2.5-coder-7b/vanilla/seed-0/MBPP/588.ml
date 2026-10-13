let rec big_diff (nums : int list) : int = 
  let rec helper nums min max = 
    match nums with
    | [] -> max - min
    | hd :: tl -> 
        let new_min = min hd in
        let new_max = max hd in
        helper tl new_min new_max
  in
  match nums with
  | [] -> 0
  | _ -> helper nums (List.hd nums) (List.hd nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
