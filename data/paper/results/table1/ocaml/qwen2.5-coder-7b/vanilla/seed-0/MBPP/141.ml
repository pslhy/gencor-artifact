let rec pancake_sort (nums : int list) : int list = 
  let flip end_pos lst = 
    let rec flip' acc i end_pos lst = 
      if i < end_pos then 
        flip' (List.rev (List.take (i + 1) lst) @ acc) (i + 1) end_pos (List.drop (i + 1) lst)
      else (acc @ lst) in 
    flip' [] 0 end_pos lst in 
  
  let move_max_to_top idx lst = 
    let rec move' acc up_to idx lst = 
      if idx = up_to then (acc @ lst) 
      else (move' (hd lst :: acc) (up_to + 1) idx (tl lst)) in 
    move' [] 0 idx lst in 
  
  let rec sort' lst n = 
    if n = 0 then lst 
    else let max_pos = ref 0 and max = ref (hd lst) in 
         List.iteri (fun i x -> if x >= !max then (max := x; max_pos := i)) lst; 
         let lst' = flip !max_pos lst in 
         let lst'' = move_max_to_top !max_pos lst' in 
         sort' lst'' (n - 1) in 
  sort' nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
