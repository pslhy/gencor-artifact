let rec unique_product (list_data : int list) : int = 
  let rec check_duplicates acc = function
    | [] -> acc
    | h::t ->
      if List.mem h t then check_duplicates acc t else check_duplicates (h::acc) t
  in
  let unique_list = check_duplicates [] list_data in
  let rec product = function
    | [] -> 1
    | h::t -> h * product t
  in
  product unique_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
