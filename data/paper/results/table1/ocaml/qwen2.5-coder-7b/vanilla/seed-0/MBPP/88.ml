let rec freq_count (list1 : int list) : (int * int) list = 
  let rec helper lst freq_map = 
    match lst with
    | [] -> freq_map
    | x::xs -> 
       let new_map = 
         if List.mem_assoc x freq_map then 
           let count = List.assoc x freq_map in
           List.remove_assoc x freq_map @ [(x, count + 1)]
         else [(x, 1)] @ freq_map 
       in helper xs new_map
  in helper list1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
