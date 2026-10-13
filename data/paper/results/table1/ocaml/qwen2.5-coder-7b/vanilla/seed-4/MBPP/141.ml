let rec pancake_sort (nums : int list) : int list = 
  let rec flip (lst : int list) (k : int) : int list =
    let rec helper (acc : int list) (lst : int list) (k : int) : int list =
      if k = 0 then acc @ lst
      else helper (lst.(k) :: acc) (Array.sub lst (k + 1) (Array.length lst - k - 1)) (k - 1)
    in helper [] (Array.of_list lst) k
  in
  let rec sort (lst : int list) (len : int) : int list =
    if len <= 1 then lst
    else let max_index = max_list lst in
         flip lst max_index;
         flip lst (len - 1);
         sort (List.tl (List.rev lst)) (len - 1)
  and max_list (lst : int list) : int =
    let rec helper (max : int) (lst : int list) : int =
      match lst with
      | [] -> max
      | x::xs -> helper (if x > max then x else max) xs
    in helper min_int lst
  in sort nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
