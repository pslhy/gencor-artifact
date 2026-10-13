let rec shell_sort (my_list : int list) : int list = 
  let gap = List.length my_list / 2 in
  if gap = 0 then my_list
  else
    let rec insertionsort gap l =
      match l with
      | [] -> []
      | x::xs -> insert x (insertionsort gap xs)
      and insert x lst =
        match lst with
        | [] -> [x]
        | y::ys when x <= y -> x :: y :: ys
        | y::ys -> y :: insert x ys
    in
    shell_sort gap my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
