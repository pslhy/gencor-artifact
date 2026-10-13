let rec find_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | h::t -> (List.length (List.filter (fun x -> x = h) arr)) * h + find_sum (List.filter (fun x -> x <> h) arr)
  ;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
