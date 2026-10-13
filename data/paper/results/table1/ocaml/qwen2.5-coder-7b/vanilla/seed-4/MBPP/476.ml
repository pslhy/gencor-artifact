let rec big_sum (nums : int list) : int = 
  let rec find_max_min = function
    | [] -> failwith "Empty list"
    | [x] -> (x, x)
    | h :: t ->
        let (max_val, min_val) = find_max_min t in
        (max h max_val, min h min_val)
  in
  let (max_val, min_val) = find_max_min nums in
  max_val + min_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
