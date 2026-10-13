let rec max_sum_list (lists : int list list) : int list = 
  let rec sum_list lst = 
    match lst with
      | [] -> 0
      | x::xs -> x + sum_list xs
  in
  let rec find_max max_list max_sum lists = 
    match lists with
      | [] -> max_list
      | x::xs -> 
        let current_sum = sum_list x in
        if current_sum > max_sum then 
          find_max x current_sum xs 
        else 
          find_max max_list max_sum xs
  in
  find_max [] 0 lists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
