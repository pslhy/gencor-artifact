let rec search (arr : int list) : int = 
    match arr with
    | [] -> failwith "List is empty!"
    | a :: b :: rest ->
            if a = b then search (a :: rest)
            else if arr = [] then a
            else if b < a then search (a :: rest)
            else search arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
