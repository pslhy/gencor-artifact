
let rec pancake_sort (nums : int list) : int list = 
  let rec flip (lst : int list) (k : int) : int list = 
    if k = 0 then lst 
    else 
      let rec push_front (lst : int list) (x : int) : int list = 
        x :: lst 
      and pop_back (lst : int list) : (int * int list) = 
        match lst with 
          | [] -> failwith "Empty list" 
          | x :: [] -> (x, []) 
          | x :: y :: xs -> (x, y :: xs) 
      in 
      let (prefix, rest) = pop_back lst in 
      push_front (prefix :: rest) (List.nth lst k) 
  and find_max_index (lst : int list) : int = 
    let rec helper (index : int) (max_index : int) (max_value : int) (lst : int list) : int = 
      match lst with 
        | [] -> max_index 
        | x :: xs -> 
            if x > max_value then helper (index + 1) index x xs 
            else helper (index + 1) max_index max_value xs 
    in 
    helper 0 0 (List.hd lst) (List.tl lst) 
  in 
  let rec sort lst = 
    match lst with 
      | [] | [_] -> lst 
      | _ -> 
          let max_index = find_max_index lst in 
          let lst = flip lst max_index in 
          let (prefix, rest) = flip lst (List.length lst - 1) in 
          prefix :: sort rest 
  in 
  sort nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
