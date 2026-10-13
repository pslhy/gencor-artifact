let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_even (lst : int list) : int option =
    match lst with
    | [] -> None
    | x :: xs -> if x mod 2 = 0 then Some x else find_first_even xs
  and find_first_odd (lst : int list) : int option =
    match lst with
    | [] -> None
    | x :: xs -> if x mod 2 <> 0 then Some x else find_first_odd xs
  in
  match find_first_even list1, find_first_odd list1 with
  | Some even, Some odd -> even - odd
  | _ -> failwith "No even or odd numbers in the list"



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
