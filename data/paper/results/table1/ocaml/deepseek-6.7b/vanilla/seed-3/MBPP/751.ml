let rec check_min_heap (arr : int list) : bool =
  let len = List.length arr in
  let rec helper i =
    if i >= len then true
    else
      if ((get_nth arr (2*i+1)) > (get_nth arr i) || (get_nth arr (2*i+2)) > (get_nth arr i)) then false
      else helper (i+1)
  in
  helper 0

and get_nth (arr : int list) (n : int) : int =
  match arr with
  | [] -> failwith "Index out of bounds"
  | h::t -> if n = 0 then h else get_nth t (n-1)
in
check_min_heap


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
