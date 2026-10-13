let rec unique_product (list_data : int list) : int =
    match list_data with
    | [] -> 1
    | h :: t ->
        let unique_elements = List.filter (fun x -> x != h) t in
        h * unique_product unique_elements


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
