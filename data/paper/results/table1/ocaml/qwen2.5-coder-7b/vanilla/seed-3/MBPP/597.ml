let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
  match (arr1, arr2, k) with
  | ([], [], _) -> failwith "k is out of bounds"
  | ([], _::xs, 1) -> List.hd xs
  | (_::xs, [], 1) -> List.hd xs
  | (_::xs, ys, 1) -> min (List.hd xs) (List.hd ys)
  | (xs, _::ys, 1) -> min (List.hd xs) (List.hd ys)
  | _ :: xs, _ :: ys, _ ->
      if List.hd xs < List.hd ys then find_kth xs ys k
      else find_kth ys xs k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
