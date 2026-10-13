let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
  let rec merge_sort lst =
    let rec split lst = 
      let rec loop lst left right =
        match lst with
        | [] -> (left, right)
        | x::xs -> loop xs (x::left) right
      in
      let (left, right) = split lst in
      match (left, right) with
      | ([], right) -> right
      | (left, []) -> left
      | (x::xs, y::ys) -> 
          if x <= y then x :: merge_sort (xs @ [y;ys]) else y :: merge_sort ([x;xs] @ ys)
    in
    let rec merge lst1 lst2 =
      match (lst1, lst2) with
      | ([], lst2) -> lst2
      | (lst1, []) -> lst1
      | (x::xs, y::ys) -> if x <= y then x :: merge xs lst2 else y :: merge lst1 ys
    in
    let rec helper lst = 
      match lst with
      | [] | [_] -> lst
      | _ -> let (left, right) = split lst in merge (helper left) (helper right)
    in
    helper lst
  in
  let rec add_unique acc lst =
    match lst with
    | [] -> acc
    | x::xs -> if List.mem x acc then add_unique acc xs else add_unique (x::acc) xs
  in
  let combined = add_unique [] (test_tup1 @ test_tup2) in
  merge_sort combined
;;  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
