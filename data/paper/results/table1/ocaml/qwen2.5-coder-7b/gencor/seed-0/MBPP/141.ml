
let rec pancake_sort (nums : int list) : int list = 
  let flip end_pos lst = 
    let rec flip' acc i end_pos lst = 
      if i < end_pos then 
        flip' (List.rev (List.nth lst end_pos :: acc)) (i+1) end_pos (List.rev (List.nth lst end_pos :: acc)) 
      else 
        acc
    in 
    flip' [] 0 end_pos lst
  in
  let rec sort end_pos lst = 
    if end_pos = 0 then 
      lst
    else
      let max_pos = List.find_index (fun x -> x = List.nth lst end_pos) (List.rev lst) in
      let new_lst = flip max_pos lst in
      let new_lst = flip end_pos new_lst in
      sort (end_pos-1) new_lst
  in
  sort (List.length nums - 1) nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
