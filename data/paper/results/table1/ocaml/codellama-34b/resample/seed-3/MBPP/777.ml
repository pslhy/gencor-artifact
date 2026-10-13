(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
let rec find_sum (arr : int list) : int =
  if List.length arr <= 1 then
    raise (Invalid_argument "List must have at least 2 elements to find sum of non-repeated elements")
  else
    let unique_elements = List.filter (fun elem ->
      List.filter (fun x -> x = elem) arr |> List.length <= 1
    ) in
    List.fold_left (fun acc elem -> elem + acc) 0 unique_elements

