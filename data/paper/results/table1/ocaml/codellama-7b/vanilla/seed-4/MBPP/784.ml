let rec mul_even_odd (list1 : int list) : int = 
    match list1 with 
      head :: tail -> 
          (match (%<:comma>) head with 
            0 -> mul_even_odd tail 
            h -> (match (List.nth list1 1) with 
                1 -> h
                b -> h*b)
          ) 
      | [] -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
