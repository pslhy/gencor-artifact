let rec max_Product (arr : int list) :  int * int =
  match arr with
  | [] -> failwith "list is empty"
  | head :: tail ->
    let max_rest_pair = max_Product tail in
    if head * (fst max_rest_pair) > snd max_rest_pair * (fst max_rest_pair) then
      if head > fst max_rest_pair then (head, fst max_rest_pair) else max_rest_pair
    else if head * (snd max_rest_pair) > snd max_rest_pair * (fst max_rest_pair) then
      (fst max_rest_pair, head)
    else max_rest_pair;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
