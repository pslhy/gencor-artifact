let rec max_sum_list (lists : int list list) : int list = 
  let rec sum lst = 
    match lst with
    | [] -> 0
    | h::t -> h + sum t
  in
  let rec find_max current_max current_list =
    match lists with
    | [] -> current_max
    | h::t -> 
        let current_sum = sum h in
        let new_max = if current_sum > (sum current_max) then h else current_max in
        find_max new_max t
  in
  find_max [] lists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
