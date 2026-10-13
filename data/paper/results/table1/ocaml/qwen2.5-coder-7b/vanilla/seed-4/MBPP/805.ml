let rec max_sum_list (lists : int list list) : int list = 
  let rec sum lst = 
    match lst with 
    | [] -> 0 
    | h::t -> h + sum t 
  in
  match lists with 
  | [] -> []
  | h::t -> 
    let rec find_max acc = 
      match t with 
      | [] -> h 
      | y::ys -> 
        if sum y > sum acc then 
          find_max y 
        else 
          find_max acc 
    in
    find_max h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
